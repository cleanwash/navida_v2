import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:navida_v2/presentation/quiz/quiz_view_model.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<QuizViewModel>().getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<QuizViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('항공 퀴즈'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Lottie.asset(
              'assets/animation/sky.json',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: _buildQuestionScreen(viewModel),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionScreen(QuizViewModel viewModel) {
    final quizs = viewModel.state.quizs;
    if (quizs.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    final currentQuiz = quizs[viewModel.state.currentIndex];
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                currentQuiz.question,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ...List.generate(currentQuiz.options.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        checkAnswerAndProceed(index,
                            currentQuiz.correctAnswerIndex[0], viewModel);
                      },
                      style: ElevatedButton.styleFrom(),
                      child: Text(currentQuiz.options[index]),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }

  void checkAnswerAndProceed(
      int selectedIndex, int correctIndex, QuizViewModel viewModel) {
    bool isCorrect = selectedIndex == correctIndex;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => _buildAnswerAnimation(isCorrect),
    ).then((_) {
      if (viewModel.state.currentIndex < viewModel.state.quizs.length - 1) {
        viewModel.nextQuestion();
      } else {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => _buildResultScreen(viewModel),
        );
      }
    });
  }

  Widget _buildAnswerAnimation(bool isCorrect) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                isCorrect
                    ? 'assets/animation/correct.json'
                    : 'assets/animation/wrong.json',
                height: 200,
                repeat: false,
                onLoaded: (composition) {
                  Future.delayed(composition.duration, () {
                    if (mounted) {
                      Navigator.of(context).pop();
                    }
                  });
                },
              ),
              const SizedBox(height: 16),
              Text(
                isCorrect ? '정답입니다!' : '틀렸습니다.',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResultScreen(QuizViewModel viewModel) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/animation/flight.json',
              fit: BoxFit.contain,
              height: 300,
            ),
            const SizedBox(height: 20),
            const Text(
              '퀴즈 완료!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              '점수: 0/0',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                viewModel.resetQuiz();
                Navigator.of(context).pop();
              },
              child: const Text('다시 시작'),
            ),
          ],
        ),
      ),
    );
  }
}

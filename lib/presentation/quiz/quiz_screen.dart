import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:navida_v2/presentation/component/quiz/quiz_answer_animation.dart';
import 'package:navida_v2/presentation/component/quiz/quiz_question_card.dart';
import 'package:navida_v2/presentation/component/quiz/quiz_result_card.dart';
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
                child: _buildContent(viewModel),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(QuizViewModel viewModel) {
    if (viewModel.state.quizs.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    final currentQuiz = viewModel.state.quizs[viewModel.state.currentIndex];

    return QuizQuestionCard(
      question: currentQuiz.question,
      options: currentQuiz.options,
      onOptionSelected: (index) =>
          _handleAnswer(index, currentQuiz.correctAnswerIndex[0], viewModel),
    );
  }

  void _handleAnswer(
      int selectedIndex, int correctIndex, QuizViewModel viewModel) {
    bool isCorrect = selectedIndex == correctIndex;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => QuizAnswerAnimation(isCorrect: isCorrect),
    ).then((_) {
      if (viewModel.state.currentIndex < viewModel.state.quizs.length - 1) {
        viewModel.nextQuestion();
      } else {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => QuizResultCard(
            onRestart: () {
              viewModel.resetQuiz();
              Navigator.of(context).pop();
            },
          ),
        );
      }
    });
  }
}

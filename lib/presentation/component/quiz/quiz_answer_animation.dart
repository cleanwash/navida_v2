import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class QuizAnswerAnimation extends StatelessWidget {
  final bool isCorrect;

  const QuizAnswerAnimation({
    super.key,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
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
                    ? 'assets/animation/check.json'
                    : 'assets/animation/wrong.json',
                height: 200,
                repeat: false,
                onLoaded: (composition) {
                  Future.delayed(composition.duration, () {
                    if (context.mounted) {
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
}

// quiz_result_screen.dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class QuizResultCard extends StatelessWidget {
  final VoidCallback onRestart;

  const QuizResultCard({
    super.key,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
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
            // const Text(
            //   '점수: 0/0',
            //   style: TextStyle(fontSize: 18),
            // ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onRestart,
              child: const Text('다시 시작'),
            ),
          ],
        ),
      ),
    );
  }
}

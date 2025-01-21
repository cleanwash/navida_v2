import 'package:flutter/material.dart';

class QuizQuestionCard extends StatelessWidget {
  final String question;
  final List<String> options;
  final Function(int) onOptionSelected;

  const QuizQuestionCard({
    super.key,
    required this.question,
    required this.options,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            question,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ...List.generate(options.length, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => onOptionSelected(index),
                  style: ElevatedButton.styleFrom(),
                  child: Text(options[index]),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

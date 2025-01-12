import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? fontColor;
  final String? imagePath;
  final String text;
  final void Function() onLoginClick;

  const LoginButton({
    super.key,
    required this.backgroundColor,
    this.fontColor,
    this.imagePath,
    required this.text,
    required this.onLoginClick,
    required TextStyle style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onLoginClick,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null) ...[
              Image.asset(
                imagePath!,
                height: 24,
              ),
              const SizedBox(width: 8),
            ],
            Text(
              text,
              style: TextStyle(color: fontColor),
            ),
          ],
        ),
      ),
    );
  }
}

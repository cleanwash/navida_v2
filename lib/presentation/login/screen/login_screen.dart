import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:navida_v2/presentation/component/login_button.dart';
import 'package:navida_v2/util/ui/text_styles.dart';

class LoginScreen extends StatefulWidget {
  final void Function() onTapKakao;
  final void Function() onTapGoogle;
  final void Function() onTapFacebook;
  final void Function() onTapApple;
  const LoginScreen({
    super.key,
    required this.onTapKakao,
    required this.onTapGoogle,
    required this.onTapFacebook,
    required this.onTapApple,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Lottie.asset(
              'assets/animation/sky.json',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(flex: 1),
              Lottie.asset('assets/animation/flight.json'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                  backgroundColor: Colors.white,
                  fontColor: Colors.black,
                  style: TextStyles.bodyTextMedium,
                  imagePath: 'assets/images/sns-google.png',
                  onLoginClick: widget.onTapGoogle,
                  text: 'Google로 시작하기',
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                  backgroundColor: Colors.white,
                  fontColor: Colors.black,
                  style: TextStyles.bodyTextMedium,
                  imagePath: 'assets/images/sns-facebook.png',
                  onLoginClick: widget.onTapFacebook,
                  text: '페이스북으로 시작하기',
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                  backgroundColor: Colors.yellow,
                  fontColor: Colors.black,
                  style: TextStyles.bodyTextMedium,
                  imagePath: 'assets/images/sns-kakao.png',
                  onLoginClick: widget.onTapKakao,
                  text: '카카오로 시작하기',
                ),
              ),
              const Spacer(),
              Visibility(
                visible: Platform.isIOS,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LoginButton(
                    backgroundColor: Colors.black,
                    fontColor: Colors.white,
                    style: TextStyles.bodyTextMedium,
                    imagePath: 'assets/images/sns-apple.png',
                    onLoginClick: widget.onTapApple,
                    text: '애플로 시작하기',
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:navida_v2/presentation/component/login_button.dart';
import 'package:navida_v2/presentation/login/login_view_model.dart';
import 'package:navida_v2/util/ui/text_styles.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  final void Function() onTapKakao;
  final void Function() onTapGoogle;
  final void Function() onTapApple;
  final void Function() onTapEmailSignUp;
  const LoginScreen({
    super.key,
    required this.onTapKakao,
    required this.onTapGoogle,
    required this.onTapApple,
    required this.onTapEmailSignUp,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              const Spacer(flex: 2),
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
                  backgroundColor: Colors.black,
                  fontColor: Colors.white,
                  style: TextStyles.bodyTextMedium,
                  imagePath: 'assets/images/sns-apple.png',
                  onLoginClick: widget.onTapApple,
                  text: 'apple로 시작하기',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: widget.onTapEmailSignUp,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        '이메일로 시작하기',
                        style: TextStyles.bodyTextMedium
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

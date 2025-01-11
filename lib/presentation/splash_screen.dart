// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  final void Function() onTapLogin;

  const SplashScreen({
    super.key,
    required this.onTapLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "당신의 비행 여정을 기록하세요",
            body: "달력에 본인의 비행 여정 및 일정을 저장하세요",
            image: Lottie.asset('assets/animation/flight.json',
                fit: BoxFit.cover, height: 300),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(color: Colors.orange, fontSize: 24),
              bodyTextStyle:
                  TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
          ),
          PageViewModel(
            title: "항공 관련 문제를 풀어보세요",
            body: "본인의 점수를 확인해 보세요",
            image: Lottie.asset('assets/animation/flight3.json',
                fit: BoxFit.cover, height: 300),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(color: Colors.orange, fontSize: 24),
              bodyTextStyle:
                  TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
          )
        ],
        next: const Text("Next"),
        done: const Text("Done"),
        onDone: () async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('onboarding_complete', true);
          onTapLogin();
        },
      ),
    );
  }
}

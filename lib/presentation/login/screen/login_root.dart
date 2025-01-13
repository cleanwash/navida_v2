import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:navida_v2/presentation/login/screen/login_screen.dart';
import 'package:navida_v2/presentation/login/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginRoot extends StatelessWidget {
  const LoginRoot({super.key});

  @override
  Widget build(BuildContext context) {
    print('LoginRoot build 호출됨');

    final viewModel = context.watch<LoginViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return LoginScreen(
          onTapGoogle: () async {
            print('Google 로그인 시도');

            await viewModel.signInWithGoogle();
            if (viewModel.isLoggedIn && context.mounted) {
              context.go('/main');
            }
          },
          onTapApple: () async {
            print('애플 로그인 시도');
            await viewModel.signInWithApple();
            if (viewModel.isLoggedIn && context.mounted) {
              context.go('/main');
            }
          },
          onTapEmailSignUp: () {
            context.go('/main');
          },
          onTapKakao: () {
            // 카카오 로그인 구현 시 추가
          },
        );
      },
    );
  }
}

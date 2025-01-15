import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navida_v2/core/routing/routerPath.dart';
import 'package:navida_v2/presentation/login/login_view_model.dart';
import 'package:navida_v2/presentation/login/screen/login_screen.dart';
import 'package:provider/provider.dart';

class LoginRoot extends StatelessWidget {
  const LoginRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return LoginScreen(
            onTapKakao: () async {
              try {
                await viewModel.signInWithKakao();
                if (viewModel.isUserLoggedIn && context.mounted) {
                  context.go(Routerpath.calendar);
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(e.toString())),
                  );
                }
              }
            },
            onTapGoogle: () async {
              try {
                await viewModel.signInWithGoogle();
                if (viewModel.isUserLoggedIn && context.mounted) {
                  context.go(Routerpath.calendar);
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(e.toString())),
                  );
                }
              }
            },
            onTapApple: () {},
            onTapEmailSignUp: () {});
      },
    );
  }
}

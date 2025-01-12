import 'package:go_router/go_router.dart';
import 'package:navida_v2/core/routing/routerPath.dart';
import 'package:navida_v2/presentation/login/login_screen.dart';
import 'package:navida_v2/presentation/sign_up/%08email_sign_up.dart';
import 'package:navida_v2/presentation/splash_screen.dart';

final router = GoRouter(
  initialLocation: Routerpath.login,
  routes: [
    GoRoute(
      path: Routerpath.splash,
      builder: (context, state) => SplashScreen(
        onTapLogin: () => context.go(Routerpath.login),
      ),
    ),
    GoRoute(
      path: Routerpath.emailSignUp,
      builder: (context, state) => EmailSignUp(),
    ),
    GoRoute(
      path: Routerpath.login,
      builder: (context, state) => LoginScreen(
        onTapApple: () {},
        onTapGoogle: () {},
        onTapKakao: () {},
        onTapEmailSignUp: () => context.go(Routerpath.emailSignUp),
      ),
    ),
  ],
);

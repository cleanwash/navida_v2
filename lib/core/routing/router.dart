import 'package:go_router/go_router.dart';
import 'package:navida_v2/core/presentation/navigation_screen.dart';
import 'package:navida_v2/core/routing/routerPath.dart';
import 'package:navida_v2/presentation/calendar/calendar_screen.dart';
import 'package:navida_v2/presentation/login/login_screen.dart';
import 'package:navida_v2/presentation/main/main_screen.dart';
import 'package:navida_v2/presentation/notice/notice_screen.dart';
import 'package:navida_v2/presentation/quiz/quiz_screen.dart';
import 'package:navida_v2/presentation/sign_up/%08email_sign_up.dart';
import 'package:navida_v2/presentation/splash/splash_screen.dart';

final router = GoRouter(
  initialLocation: Routerpath.main,
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
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavigationScreen(
          body: navigationShell,
          currentPageIndex: navigationShell.currentIndex,
          onChangeIndex: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routerpath.main,
              builder: (context, state) => MainScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routerpath.calendar,
              builder: (context, state) => CalendarScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routerpath.quiz,
              builder: (context, state) => QuizScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routerpath.notice,
              builder: (context, state) => NoticeScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

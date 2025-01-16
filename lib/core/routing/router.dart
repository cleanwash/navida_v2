import 'package:go_router/go_router.dart';
import 'package:navida_v2/core/presentation/navigation_screen.dart';
import 'package:navida_v2/core/routing/routerPath.dart';
import 'package:navida_v2/data/data_source/email_auth.dart';
import 'package:navida_v2/data/data_source/facebook_auth.dart';
import 'package:navida_v2/data/data_source/google_auth.dart';
import 'package:navida_v2/data/data_source/kakao_auth.dart';

import 'package:navida_v2/presentation/calendar/calendar_screen.dart';
import 'package:navida_v2/presentation/login/email_sign_up_screen.dart';
import 'package:navida_v2/presentation/login/login_view_model.dart';
import 'package:navida_v2/presentation/login/screen/login_root.dart';
import 'package:navida_v2/presentation/main/main_screen.dart';
import 'package:navida_v2/presentation/notice/notice_screen.dart';
import 'package:navida_v2/presentation/quiz/quiz_screen.dart';
import 'package:navida_v2/presentation/splash/splash_screen.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: Routerpath.loginRoot,
  routes: [
    GoRoute(
      path: Routerpath.splash,
      builder: (context, state) => SplashScreen(
        onTapLogin: () => context.go(Routerpath.loginRoot),
      ),
    ),
    GoRoute(
      path: Routerpath.emailSignUp,
      builder: (context, state) => EmailSignUpScreen(),
    ),
    GoRoute(
      path: Routerpath.loginRoot,
      builder: (context, state) => ChangeNotifierProvider(
        create: (context) => LoginViewModel(
          facebookAuth: FaceBookAuth(),
          googleAuth: GoogleAuth(),
          kakaoAuth: KakaoAuth(),
          emailAuth: EmailAuth(),
        ),
        child: LoginRoot(),
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

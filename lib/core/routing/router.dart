import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:navida_v2/core/presentation/navigation_screen.dart';
import 'package:navida_v2/core/routing/routerPath.dart';
import 'package:navida_v2/data/data_source/apple_auth.dart';
import 'package:navida_v2/data/data_source/facebook_auth.dart';
import 'package:navida_v2/data/data_source/google_auth.dart';
import 'package:navida_v2/data/data_source/kakao_auth.dart';
import 'package:navida_v2/data/repository/flight_calendar_repository_impl.dart';
import 'package:navida_v2/data/repository/quiz_repository_impl.dart';
import 'package:navida_v2/domain/use_case/main_use_case.dart';
import 'package:navida_v2/presentation/calendar/calendar_screen.dart';
import 'package:navida_v2/presentation/calendar/calendar_view_model.dart';
import 'package:navida_v2/presentation/login/email_sign_up_screen.dart';
import 'package:navida_v2/presentation/login/login_view_model.dart';
import 'package:navida_v2/presentation/login/screen/login_root.dart';
import 'package:navida_v2/presentation/main/main_screen.dart';
import 'package:navida_v2/presentation/main/main_view_model.dart';
import 'package:navida_v2/presentation/quiz/quiz_screen.dart';
import 'package:navida_v2/presentation/quiz/quiz_view_model.dart';
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
          appleAuth: AppleAuth(),
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
              builder: (context, state) => ChangeNotifierProvider(
                create: (context) => MainViewModel(
                  mainUseCase: MainUseCase(
                    flightCalendarRepository: FlightCalendarRepositoryImpl(
                      firestore: FirebaseFirestore.instance,
                      userId: FirebaseAuth.instance.currentUser!.uid,
                    ),
                  ),
                ),
                child: MainScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routerpath.calendar,
              builder: (context, state) => ChangeNotifierProvider(
                create: (context) => CalendarViewModel(
                  mainViewModel: MainViewModel(
                    mainUseCase: MainUseCase(
                      flightCalendarRepository: FlightCalendarRepositoryImpl(
                        firestore: FirebaseFirestore.instance,
                        userId: FirebaseAuth.instance.currentUser!.uid,
                      ),
                    ),
                  ),
                  repository: FlightCalendarRepositoryImpl(
                    firestore: FirebaseFirestore.instance,
                    userId: FirebaseAuth.instance.currentUser!.uid,
                  ),
                ),
                child: CalendarScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routerpath.quiz,
              builder: (context, state) => ChangeNotifierProvider(
                create: (context) => QuizViewModel(
                    repository: QuizRepositoryImpl(
                  firestore: FirebaseFirestore.instance,
                )),
                child: QuizScreen(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

import 'package:flutter/foundation.dart';
import 'package:navida_v2/domain/model/auth_params.dart';
import 'package:navida_v2/domain/use_case/auth_use_case.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthUseCase _authUseCase;

  LoginViewModel({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase;

  bool get isLoggedIn => _authUseCase.isUserLoggedIn();

  Future<void> checkAuthStatus() async {
    final result = await _authUseCase.execute();
    result.when(
      success: () => notifyListeners(),
      error: (message) {
        // 로그인이 필요한 상태 처리
      },
    );
  }

  Future<void> signInWithGoogle() async {
    final result = await _authUseCase.signInWithGoogle();
    result.when(
      success: () => notifyListeners(),
      error: (message) {
        // 에러 처리
      },
    );
  }

  Future<void> signInWithApple() async {
    final result = await _authUseCase.signInWithApple();
    result.when(
      success: () => notifyListeners(),
      error: (message) {
        // 에러 처리
      },
    );
  }

  Future<void> signInWithEmail(AuthParams params) async {
    final result = await _authUseCase.signInWithEmail(params);
    result.when(
      success: () => notifyListeners(),
      error: (message) {
        // 에러 처리
      },
    );
  }
}

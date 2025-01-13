// lib/domain/use_case/auth_use_case.dart
import 'package:navida_v2/domain/model/auth_params.dart';
import 'package:navida_v2/domain/model/auth_result.dart';
import 'package:navida_v2/domain/repository/apple_auth_repository.dart';
import 'package:navida_v2/domain/repository/email_auth_repository.dart';
import 'package:navida_v2/domain/repository/google_auth_repository.dart';

class AuthUseCase {
  final EmailAuthRepository _emailRepository;
  final GoogleAuthRepository _googleRepository;
  final AppleAuthRepository _appleRepository;

  AuthUseCase({
    required EmailAuthRepository emailRepository,
    required GoogleAuthRepository googleRepository,
    required AppleAuthRepository appleRepository,
  })  : _emailRepository = emailRepository,
        _googleRepository = googleRepository,
        _appleRepository = appleRepository;

  Future<AuthResult> execute() async {
    if (isUserLoggedIn()) {
      return const AuthResult.success();
    }
    return const AuthResult.error('로그인이 필요합니다');
  }

  Future<AuthResult> signInWithEmail(AuthParams params) async {
    return await _emailRepository.signIn(params);
  }

  Future<AuthResult> signUpWithEmail(AuthParams params) async {
    return await _emailRepository.signUp(params);
  }

  Future<AuthResult> signInWithGoogle() async {
    return await _googleRepository.signInWithGoogle();
  }

  Future<AuthResult> signInWithApple() async {
    return await _appleRepository.signInWithApple();
  }

  bool isUserLoggedIn() {
    return _emailRepository.currentUser() != null ||
        _googleRepository.currentUser() != null ||
        _appleRepository.currentUser() != null;
  }

  Future<void> signOut() async {
    await _emailRepository.signOut();
    await _googleRepository.signOut();
    await _appleRepository.signOut();
  }
}

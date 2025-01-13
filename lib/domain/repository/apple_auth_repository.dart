import 'package:firebase_auth/firebase_auth.dart';
import 'package:navida_v2/domain/model/auth_result.dart';

abstract interface class AppleAuthRepository {
  User? currentUser();
  Future<AuthResult> signInWithApple();
  Future<void> signOut();
}

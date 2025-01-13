import 'package:firebase_auth/firebase_auth.dart';
import 'package:navida_v2/domain/model/auth_result.dart';

abstract interface class GoogleAuthRepository {
  User? currentUser();
  Future<AuthResult> signInWithGoogle();
  Future<void> signOut();
}

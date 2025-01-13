import 'package:firebase_auth/firebase_auth.dart';
import 'package:navida_v2/domain/model/auth_params.dart';
import 'package:navida_v2/domain/model/auth_result.dart';

abstract interface class EmailAuthRepository {
  User? currentUser();
  Future<AuthResult> signIn(AuthParams params);
  Future<AuthResult> signUp(AuthParams params);
  Future<void> signOut();
}

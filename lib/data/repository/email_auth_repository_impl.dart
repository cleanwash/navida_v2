import 'package:firebase_auth/firebase_auth.dart';
import 'package:navida_v2/domain/model/auth_params.dart';
import 'package:navida_v2/domain/model/auth_result.dart';
import 'package:navida_v2/domain/repository/email_auth_repository.dart';

class EmailAuthRepositoryImpl implements EmailAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  User? currentUser() => _auth.currentUser;

  @override
  Future<AuthResult> signIn(AuthParams params) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      return const AuthResult.success();
    } catch (e) {
      return AuthResult.error(e.toString());
    }
  }

  @override
  Future<AuthResult> signUp(AuthParams params) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      return const AuthResult.success();
    } catch (e) {
      return AuthResult.error(e.toString());
    }
  }

  @override
  Future<void> signOut() => _auth.signOut();
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:navida_v2/domain/model/auth_result.dart';
import 'package:navida_v2/domain/repository/apple_auth_repository.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleAuthRepositoryImpl implements AppleAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  User? currentUser() => _auth.currentUser;

  @override
  Future<AuthResult> signInWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      await _auth.signInWithCredential(oauthCredential);
      return const AuthResult.success();
    } catch (e) {
      return AuthResult.error(e.toString());
    }
  }

  @override
  Future<void> signOut() => _auth.signOut();
}

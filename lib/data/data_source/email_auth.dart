import 'package:firebase_auth/firebase_auth.dart';

class EmailAuth {
  User? currentUser() {
    return FirebaseAuth.instance.currentUser;
  }

  Future<void> signUp(
      {required String email,
      required String password,
      required Function() onSuccess,
      required Function(String err) onError}) async {
    if (email.isEmpty) {
      onError("이메일을 입력해 주세요.");
      return;
    } else if (password.isEmpty) {
      onError("비밀번호를 입력해 주세요.");
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      onSuccess();
    } on FirebaseAuthException catch (e) {
      onError(e.message!);
    } catch (e) {
      onError(e.toString());
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
    required Function() onSuccess,
    required Function(String err) onError,
  }) async {
    if (email.isEmpty) {
      onError('이메일을 입력해주세요.');
      return;
    } else if (password.isEmpty) {
      onError('비밀번호를 입력해주세요.');
      return;
    }
  }

  Future<UserCredential> signInOrSignUp({
    required String email,
    required String password,
  }) async {
    if (email.isEmpty) {
      throw '이메일을 입력해 주세요.';
    } else if (password.isEmpty) {
      throw '비밀번호를 입력해 주세요.';
    }

    try {
      return await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      } else {
        throw e.message ?? '알 수 없는 오류가 발생했습니다.';
      }
    }
  }
}

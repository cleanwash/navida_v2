// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:navida_v2/data/data_source/facebook_auth.dart';
import 'package:navida_v2/data/data_source/google_auth.dart';
import 'package:navida_v2/data/data_source/kakao_auth.dart';

class LoginViewModel extends ChangeNotifier {
  final GoogleAuth googleAuth;
  final KakaoAuth kakaoAuth;
  final FaceBookAuth facebookAuth;
  bool _isLoading = false;
  String? _error;
  User? _user;

  LoginViewModel({
    required this.googleAuth,
    required this.kakaoAuth,
    required this.facebookAuth,
  });

  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isUserLoggedIn => _user != null;

  Future<void> signInWithGoogle() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      final userCredential = await googleAuth.signInWithGoogle();
      _user = userCredential.user;
      print('로그인 성공: ${_user?.email}');
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      print('로그인 에러: $_error');
      notifyListeners();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signInWithKakao() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      final userCredential = await kakaoAuth.signInWithKakao();
      _user = userCredential.user;

      if (_user == null) {
        throw Exception('로그인은 성공했으나 사용자 정보를 가져오지 못했습니다.');
      }

      print('카카오 로그인 완료. 사용자 이메일: ${_user?.email}');
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      print('카카오 로그인 에러 발생: $_error');
      notifyListeners();
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signInWithFacebook() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      final userCredential = await facebookAuth.signInWithFacebook();
      _user = userCredential.user;

      if (_user == null) {
        throw Exception('페이스북 로그인은 성공했으나 사용자 정보를 가져오지 못했습니다.');
      }

      print('페이스북 로그인 완료. 사용자 이메일: ${_user?.email}');
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      print('페이스북 로그인 에러 발생: $_error');
      notifyListeners();
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

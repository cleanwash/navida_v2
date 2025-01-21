import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:navida_v2/domain/model/quiz_model.dart';
import 'package:navida_v2/presentation/quiz/quiz_state.dart';

class QuizViewModel extends ChangeNotifier {
  QuizState _state = QuizState();
  QuizState get state => _state;

  Future<void> getData() async {
    try {
      final firestore = FirebaseFirestore.instance;
      final querySnapshot = await firestore.collection("flightQuiz").get();

      final quizList = querySnapshot.docs.map((doc) {
        return QuizModel.fromJson(doc.data());
      }).toList();

      _state = _state.copyWith(quizs: quizList);
      notifyListeners();
    } catch (e) {
      print('error: $e');
    }
  }
}

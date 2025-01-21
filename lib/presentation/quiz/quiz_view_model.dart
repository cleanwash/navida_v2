import 'package:flutter/material.dart';
import 'package:navida_v2/domain/repository/quiz_repository.dart';
import 'package:navida_v2/presentation/quiz/quiz_state.dart';

class QuizViewModel extends ChangeNotifier {
  final QuizRepository _repository;
  QuizState _state = QuizState();
  QuizState get state => _state;

  QuizViewModel({
    required QuizRepository repository,
  }) : _repository = repository;

  Future<void> getData() async {
    try {
      final quizList = await _repository.getQuizData();
      _state = state.copyWith(quizs: quizList);
      notifyListeners();
    } catch (e) {
      print('ViewModel Error: $e');
    }
  }

  void nextQuestion() {
    if (state.currentIndex < state.quizs.length - 1) {
      _state = state.copyWith(currentIndex: _state.currentIndex + 1);
      notifyListeners();
    }
  }

  void resetQuiz() {
    _state = state.copyWith(currentIndex: 0);
    notifyListeners();
  }
}

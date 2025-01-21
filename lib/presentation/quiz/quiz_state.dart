import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navida_v2/domain/model/quiz_model.dart';

part 'quiz_state.freezed.dart';
part 'quiz_state.g.dart';

@freezed
class QuizState with _$QuizState {
  factory QuizState({
    @Default([]) List<QuizModel> quizs,
    @Default(0) int currentIndex,
  }) = _QuizState;

  factory QuizState.fromJson(Map<String, dynamic> json) =>
      _$QuizStateFromJson(json);
}

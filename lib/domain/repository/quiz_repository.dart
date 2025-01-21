import 'package:navida_v2/domain/model/quiz_model.dart';

abstract interface class QuizRepository {
  Future<List<QuizModel>> getQuizData();
}

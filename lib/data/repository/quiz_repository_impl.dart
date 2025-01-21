import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:navida_v2/domain/model/quiz_model.dart';
import 'package:navida_v2/domain/repository/quiz_repository.dart';

class QuizRepositoryImpl implements QuizRepository {
  final FirebaseFirestore _firestore;

  QuizRepositoryImpl({required FirebaseFirestore firestore})
      : _firestore = firestore;

  @override
  Future<List<QuizModel>> getQuizData() async {
    try {
      final querySnapshot = await _firestore.collection("flightQuiz").get();
      return querySnapshot.docs
          .map((doc) => QuizModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}

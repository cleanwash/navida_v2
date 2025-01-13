import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:navida_v2/domain/repository/quiz_repository.dart';

class QuizRepositoryImpl implements QuizRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<QuerySnapshot<Map<String, dynamic>>> read() async {
    return await _firestore.collection('flightQuiz').get();
  }
}

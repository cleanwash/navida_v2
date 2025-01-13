import 'package:cloud_firestore/cloud_firestore.dart';

abstract interface class QuizRepository {
  Future<QuerySnapshot<Map<String, dynamic>>> read();
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizStateImpl _$$QuizStateImplFromJson(Map<String, dynamic> json) =>
    _$QuizStateImpl(
      quizs: (json['quizs'] as List<dynamic>?)
              ?.map((e) => QuizModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentIndex: (json['currentIndex'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$QuizStateImplToJson(_$QuizStateImpl instance) =>
    <String, dynamic>{
      'quizs': instance.quizs,
      'currentIndex': instance.currentIndex,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizState _$QuizStateFromJson(Map<String, dynamic> json) {
  return _QuizState.fromJson(json);
}

/// @nodoc
mixin _$QuizState {
  List<QuizModel> get quizs => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  /// Serializes this QuizState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call({List<QuizModel> quizs, int currentIndex});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizs = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      quizs: null == quizs
          ? _value.quizs
          : quizs // ignore: cast_nullable_to_non_nullable
              as List<QuizModel>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateImplCopyWith(
          _$QuizStateImpl value, $Res Function(_$QuizStateImpl) then) =
      __$$QuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuizModel> quizs, int currentIndex});
}

/// @nodoc
class __$$QuizStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateImpl>
    implements _$$QuizStateImplCopyWith<$Res> {
  __$$QuizStateImplCopyWithImpl(
      _$QuizStateImpl _value, $Res Function(_$QuizStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizs = null,
    Object? currentIndex = null,
  }) {
    return _then(_$QuizStateImpl(
      quizs: null == quizs
          ? _value._quizs
          : quizs // ignore: cast_nullable_to_non_nullable
              as List<QuizModel>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizStateImpl implements _QuizState {
  _$QuizStateImpl(
      {final List<QuizModel> quizs = const [], this.currentIndex = 0})
      : _quizs = quizs;

  factory _$QuizStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizStateImplFromJson(json);

  final List<QuizModel> _quizs;
  @override
  @JsonKey()
  List<QuizModel> get quizs {
    if (_quizs is EqualUnmodifiableListView) return _quizs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizs);
  }

  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'QuizState(quizs: $quizs, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateImpl &&
            const DeepCollectionEquality().equals(other._quizs, _quizs) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_quizs), currentIndex);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      __$$QuizStateImplCopyWithImpl<_$QuizStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizStateImplToJson(
      this,
    );
  }
}

abstract class _QuizState implements QuizState {
  factory _QuizState({final List<QuizModel> quizs, final int currentIndex}) =
      _$QuizStateImpl;

  factory _QuizState.fromJson(Map<String, dynamic> json) =
      _$QuizStateImpl.fromJson;

  @override
  List<QuizModel> get quizs;
  @override
  int get currentIndex;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

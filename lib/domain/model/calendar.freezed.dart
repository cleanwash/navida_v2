// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Calendar _$CalendarFromJson(Map<String, dynamic> json) {
  return _Calendar.fromJson(json);
}

/// @nodoc
mixin _$Calendar {
  DateTime get createdAt => throw _privateConstructorUsedError; // 작성 시간
  String get aircraftRegistration =>
      throw _privateConstructorUsedError; // 항공기 등록번호
  double get totalFlightTime => throw _privateConstructorUsedError; //총 비행 시간
  double get distance => throw _privateConstructorUsedError; //비행 거리
  String get text => throw _privateConstructorUsedError;

  /// Serializes this Calendar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarCopyWith<Calendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarCopyWith<$Res> {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) then) =
      _$CalendarCopyWithImpl<$Res, Calendar>;
  @useResult
  $Res call(
      {DateTime createdAt,
      String aircraftRegistration,
      double totalFlightTime,
      double distance,
      String text});
}

/// @nodoc
class _$CalendarCopyWithImpl<$Res, $Val extends Calendar>
    implements $CalendarCopyWith<$Res> {
  _$CalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? aircraftRegistration = null,
    Object? totalFlightTime = null,
    Object? distance = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aircraftRegistration: null == aircraftRegistration
          ? _value.aircraftRegistration
          : aircraftRegistration // ignore: cast_nullable_to_non_nullable
              as String,
      totalFlightTime: null == totalFlightTime
          ? _value.totalFlightTime
          : totalFlightTime // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarImplCopyWith<$Res>
    implements $CalendarCopyWith<$Res> {
  factory _$$CalendarImplCopyWith(
          _$CalendarImpl value, $Res Function(_$CalendarImpl) then) =
      __$$CalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      String aircraftRegistration,
      double totalFlightTime,
      double distance,
      String text});
}

/// @nodoc
class __$$CalendarImplCopyWithImpl<$Res>
    extends _$CalendarCopyWithImpl<$Res, _$CalendarImpl>
    implements _$$CalendarImplCopyWith<$Res> {
  __$$CalendarImplCopyWithImpl(
      _$CalendarImpl _value, $Res Function(_$CalendarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? aircraftRegistration = null,
    Object? totalFlightTime = null,
    Object? distance = null,
    Object? text = null,
  }) {
    return _then(_$CalendarImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aircraftRegistration: null == aircraftRegistration
          ? _value.aircraftRegistration
          : aircraftRegistration // ignore: cast_nullable_to_non_nullable
              as String,
      totalFlightTime: null == totalFlightTime
          ? _value.totalFlightTime
          : totalFlightTime // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarImpl implements _Calendar {
  _$CalendarImpl(
      {required this.createdAt,
      required this.aircraftRegistration,
      required this.totalFlightTime,
      required this.distance,
      required this.text});

  factory _$CalendarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarImplFromJson(json);

  @override
  final DateTime createdAt;
// 작성 시간
  @override
  final String aircraftRegistration;
// 항공기 등록번호
  @override
  final double totalFlightTime;
//총 비행 시간
  @override
  final double distance;
//비행 거리
  @override
  final String text;

  @override
  String toString() {
    return 'Calendar(createdAt: $createdAt, aircraftRegistration: $aircraftRegistration, totalFlightTime: $totalFlightTime, distance: $distance, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.aircraftRegistration, aircraftRegistration) ||
                other.aircraftRegistration == aircraftRegistration) &&
            (identical(other.totalFlightTime, totalFlightTime) ||
                other.totalFlightTime == totalFlightTime) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, aircraftRegistration,
      totalFlightTime, distance, text);

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarImplCopyWith<_$CalendarImpl> get copyWith =>
      __$$CalendarImplCopyWithImpl<_$CalendarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarImplToJson(
      this,
    );
  }
}

abstract class _Calendar implements Calendar {
  factory _Calendar(
      {required final DateTime createdAt,
      required final String aircraftRegistration,
      required final double totalFlightTime,
      required final double distance,
      required final String text}) = _$CalendarImpl;

  factory _Calendar.fromJson(Map<String, dynamic> json) =
      _$CalendarImpl.fromJson;

  @override
  DateTime get createdAt; // 작성 시간
  @override
  String get aircraftRegistration; // 항공기 등록번호
  @override
  double get totalFlightTime; //총 비행 시간
  @override
  double get distance; //비행 거리
  @override
  String get text;

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarImplCopyWith<_$CalendarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

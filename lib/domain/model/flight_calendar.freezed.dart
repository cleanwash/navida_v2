// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlightCalendar _$FlightCalendarFromJson(Map<String, dynamic> json) {
  return _FlightCalendar.fromJson(json);
}

/// @nodoc
mixin _$FlightCalendar {
  String? get id => throw _privateConstructorUsedError; //파이어스토어 id 구분
  DateTime get createdAt => throw _privateConstructorUsedError; // 작성 시간
  String get aircraftRegistration =>
      throw _privateConstructorUsedError; // 항공기 등록번호
  double get totalFlightTime => throw _privateConstructorUsedError; //총 비행 시간
  double get distance => throw _privateConstructorUsedError; //비행 거리
  String get history => throw _privateConstructorUsedError;

  /// Serializes this FlightCalendar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlightCalendar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlightCalendarCopyWith<FlightCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightCalendarCopyWith<$Res> {
  factory $FlightCalendarCopyWith(
          FlightCalendar value, $Res Function(FlightCalendar) then) =
      _$FlightCalendarCopyWithImpl<$Res, FlightCalendar>;
  @useResult
  $Res call(
      {String? id,
      DateTime createdAt,
      String aircraftRegistration,
      double totalFlightTime,
      double distance,
      String history});
}

/// @nodoc
class _$FlightCalendarCopyWithImpl<$Res, $Val extends FlightCalendar>
    implements $FlightCalendarCopyWith<$Res> {
  _$FlightCalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlightCalendar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? aircraftRegistration = null,
    Object? totalFlightTime = null,
    Object? distance = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlightCalendarImplCopyWith<$Res>
    implements $FlightCalendarCopyWith<$Res> {
  factory _$$FlightCalendarImplCopyWith(_$FlightCalendarImpl value,
          $Res Function(_$FlightCalendarImpl) then) =
      __$$FlightCalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime createdAt,
      String aircraftRegistration,
      double totalFlightTime,
      double distance,
      String history});
}

/// @nodoc
class __$$FlightCalendarImplCopyWithImpl<$Res>
    extends _$FlightCalendarCopyWithImpl<$Res, _$FlightCalendarImpl>
    implements _$$FlightCalendarImplCopyWith<$Res> {
  __$$FlightCalendarImplCopyWithImpl(
      _$FlightCalendarImpl _value, $Res Function(_$FlightCalendarImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlightCalendar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? aircraftRegistration = null,
    Object? totalFlightTime = null,
    Object? distance = null,
    Object? history = null,
  }) {
    return _then(_$FlightCalendarImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlightCalendarImpl implements _FlightCalendar {
  _$FlightCalendarImpl(
      {this.id,
      required this.createdAt,
      required this.aircraftRegistration,
      required this.totalFlightTime,
      required this.distance,
      required this.history});

  factory _$FlightCalendarImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlightCalendarImplFromJson(json);

  @override
  final String? id;
//파이어스토어 id 구분
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
  final String history;

  @override
  String toString() {
    return 'FlightCalendar(id: $id, createdAt: $createdAt, aircraftRegistration: $aircraftRegistration, totalFlightTime: $totalFlightTime, distance: $distance, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlightCalendarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.aircraftRegistration, aircraftRegistration) ||
                other.aircraftRegistration == aircraftRegistration) &&
            (identical(other.totalFlightTime, totalFlightTime) ||
                other.totalFlightTime == totalFlightTime) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.history, history) || other.history == history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt,
      aircraftRegistration, totalFlightTime, distance, history);

  /// Create a copy of FlightCalendar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlightCalendarImplCopyWith<_$FlightCalendarImpl> get copyWith =>
      __$$FlightCalendarImplCopyWithImpl<_$FlightCalendarImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlightCalendarImplToJson(
      this,
    );
  }
}

abstract class _FlightCalendar implements FlightCalendar {
  factory _FlightCalendar(
      {final String? id,
      required final DateTime createdAt,
      required final String aircraftRegistration,
      required final double totalFlightTime,
      required final double distance,
      required final String history}) = _$FlightCalendarImpl;

  factory _FlightCalendar.fromJson(Map<String, dynamic> json) =
      _$FlightCalendarImpl.fromJson;

  @override
  String? get id; //파이어스토어 id 구분
  @override
  DateTime get createdAt; // 작성 시간
  @override
  String get aircraftRegistration; // 항공기 등록번호
  @override
  double get totalFlightTime; //총 비행 시간
  @override
  double get distance; //비행 거리
  @override
  String get history;

  /// Create a copy of FlightCalendar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlightCalendarImplCopyWith<_$FlightCalendarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

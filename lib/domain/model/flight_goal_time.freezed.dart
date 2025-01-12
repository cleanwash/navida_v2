// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_goal_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlightGoalTime _$FlightGoalTimeFromJson(Map<String, dynamic> json) {
  return _FlightGoalTime.fromJson(json);
}

/// @nodoc
mixin _$FlightGoalTime {
  String get logoPath => throw _privateConstructorUsedError;
  String get airlineName => throw _privateConstructorUsedError;
  String get flightHours => throw _privateConstructorUsedError;

  /// Serializes this FlightGoalTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlightGoalTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlightGoalTimeCopyWith<FlightGoalTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightGoalTimeCopyWith<$Res> {
  factory $FlightGoalTimeCopyWith(
          FlightGoalTime value, $Res Function(FlightGoalTime) then) =
      _$FlightGoalTimeCopyWithImpl<$Res, FlightGoalTime>;
  @useResult
  $Res call({String logoPath, String airlineName, String flightHours});
}

/// @nodoc
class _$FlightGoalTimeCopyWithImpl<$Res, $Val extends FlightGoalTime>
    implements $FlightGoalTimeCopyWith<$Res> {
  _$FlightGoalTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlightGoalTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoPath = null,
    Object? airlineName = null,
    Object? flightHours = null,
  }) {
    return _then(_value.copyWith(
      logoPath: null == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
      airlineName: null == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String,
      flightHours: null == flightHours
          ? _value.flightHours
          : flightHours // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlightGoalTimeImplCopyWith<$Res>
    implements $FlightGoalTimeCopyWith<$Res> {
  factory _$$FlightGoalTimeImplCopyWith(_$FlightGoalTimeImpl value,
          $Res Function(_$FlightGoalTimeImpl) then) =
      __$$FlightGoalTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String logoPath, String airlineName, String flightHours});
}

/// @nodoc
class __$$FlightGoalTimeImplCopyWithImpl<$Res>
    extends _$FlightGoalTimeCopyWithImpl<$Res, _$FlightGoalTimeImpl>
    implements _$$FlightGoalTimeImplCopyWith<$Res> {
  __$$FlightGoalTimeImplCopyWithImpl(
      _$FlightGoalTimeImpl _value, $Res Function(_$FlightGoalTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlightGoalTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoPath = null,
    Object? airlineName = null,
    Object? flightHours = null,
  }) {
    return _then(_$FlightGoalTimeImpl(
      logoPath: null == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
      airlineName: null == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String,
      flightHours: null == flightHours
          ? _value.flightHours
          : flightHours // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlightGoalTimeImpl implements _FlightGoalTime {
  _$FlightGoalTimeImpl(
      {required this.logoPath,
      required this.airlineName,
      required this.flightHours});

  factory _$FlightGoalTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlightGoalTimeImplFromJson(json);

  @override
  final String logoPath;
  @override
  final String airlineName;
  @override
  final String flightHours;

  @override
  String toString() {
    return 'FlightGoalTime(logoPath: $logoPath, airlineName: $airlineName, flightHours: $flightHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlightGoalTimeImpl &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.airlineName, airlineName) ||
                other.airlineName == airlineName) &&
            (identical(other.flightHours, flightHours) ||
                other.flightHours == flightHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, logoPath, airlineName, flightHours);

  /// Create a copy of FlightGoalTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlightGoalTimeImplCopyWith<_$FlightGoalTimeImpl> get copyWith =>
      __$$FlightGoalTimeImplCopyWithImpl<_$FlightGoalTimeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlightGoalTimeImplToJson(
      this,
    );
  }
}

abstract class _FlightGoalTime implements FlightGoalTime {
  factory _FlightGoalTime(
      {required final String logoPath,
      required final String airlineName,
      required final String flightHours}) = _$FlightGoalTimeImpl;

  factory _FlightGoalTime.fromJson(Map<String, dynamic> json) =
      _$FlightGoalTimeImpl.fromJson;

  @override
  String get logoPath;
  @override
  String get airlineName;
  @override
  String get flightHours;

  /// Create a copy of FlightGoalTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlightGoalTimeImplCopyWith<_$FlightGoalTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

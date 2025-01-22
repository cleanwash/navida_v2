// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarState _$CalendarStateFromJson(Map<String, dynamic> json) {
  return _CalendarState.fromJson(json);
}

/// @nodoc
mixin _$CalendarState {
  List<FlightCalendar> get calendars => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  double get totalFlightTime => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  /// Serializes this CalendarState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {List<FlightCalendar> calendars,
      DateTime selectedDate,
      double totalFlightTime,
      dynamic isLoading});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendars = null,
    Object? selectedDate = null,
    Object? totalFlightTime = null,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      calendars: null == calendars
          ? _value.calendars
          : calendars // ignore: cast_nullable_to_non_nullable
              as List<FlightCalendar>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalFlightTime: null == totalFlightTime
          ? _value.totalFlightTime
          : totalFlightTime // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarStateImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$CalendarStateImplCopyWith(
          _$CalendarStateImpl value, $Res Function(_$CalendarStateImpl) then) =
      __$$CalendarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FlightCalendar> calendars,
      DateTime selectedDate,
      double totalFlightTime,
      dynamic isLoading});
}

/// @nodoc
class __$$CalendarStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateImpl>
    implements _$$CalendarStateImplCopyWith<$Res> {
  __$$CalendarStateImplCopyWithImpl(
      _$CalendarStateImpl _value, $Res Function(_$CalendarStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendars = null,
    Object? selectedDate = null,
    Object? totalFlightTime = null,
    Object? isLoading = freezed,
  }) {
    return _then(_$CalendarStateImpl(
      calendars: null == calendars
          ? _value._calendars
          : calendars // ignore: cast_nullable_to_non_nullable
              as List<FlightCalendar>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalFlightTime: null == totalFlightTime
          ? _value.totalFlightTime
          : totalFlightTime // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarStateImpl implements _CalendarState {
  _$CalendarStateImpl(
      {final List<FlightCalendar> calendars = const [],
      required this.selectedDate,
      this.totalFlightTime = 0.0,
      this.isLoading = false})
      : _calendars = calendars;

  factory _$CalendarStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarStateImplFromJson(json);

  final List<FlightCalendar> _calendars;
  @override
  @JsonKey()
  List<FlightCalendar> get calendars {
    if (_calendars is EqualUnmodifiableListView) return _calendars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calendars);
  }

  @override
  final DateTime selectedDate;
  @override
  @JsonKey()
  final double totalFlightTime;
  @override
  @JsonKey()
  final dynamic isLoading;

  @override
  String toString() {
    return 'CalendarState(calendars: $calendars, selectedDate: $selectedDate, totalFlightTime: $totalFlightTime, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateImpl &&
            const DeepCollectionEquality()
                .equals(other._calendars, _calendars) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.totalFlightTime, totalFlightTime) ||
                other.totalFlightTime == totalFlightTime) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_calendars),
      selectedDate,
      totalFlightTime,
      const DeepCollectionEquality().hash(isLoading));

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      __$$CalendarStateImplCopyWithImpl<_$CalendarStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarStateImplToJson(
      this,
    );
  }
}

abstract class _CalendarState implements CalendarState {
  factory _CalendarState(
      {final List<FlightCalendar> calendars,
      required final DateTime selectedDate,
      final double totalFlightTime,
      final dynamic isLoading}) = _$CalendarStateImpl;

  factory _CalendarState.fromJson(Map<String, dynamic> json) =
      _$CalendarStateImpl.fromJson;

  @override
  List<FlightCalendar> get calendars;
  @override
  DateTime get selectedDate;
  @override
  double get totalFlightTime;
  @override
  dynamic get isLoading;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

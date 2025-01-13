// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthParams _$AuthParamsFromJson(Map<String, dynamic> json) {
  return _AuthParams.fromJson(json);
}

/// @nodoc
mixin _$AuthParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this AuthParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthParamsCopyWith<AuthParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthParamsCopyWith<$Res> {
  factory $AuthParamsCopyWith(
          AuthParams value, $Res Function(AuthParams) then) =
      _$AuthParamsCopyWithImpl<$Res, AuthParams>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthParamsCopyWithImpl<$Res, $Val extends AuthParams>
    implements $AuthParamsCopyWith<$Res> {
  _$AuthParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthParamsImplCopyWith<$Res>
    implements $AuthParamsCopyWith<$Res> {
  factory _$$AuthParamsImplCopyWith(
          _$AuthParamsImpl value, $Res Function(_$AuthParamsImpl) then) =
      __$$AuthParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthParamsImplCopyWithImpl<$Res>
    extends _$AuthParamsCopyWithImpl<$Res, _$AuthParamsImpl>
    implements _$$AuthParamsImplCopyWith<$Res> {
  __$$AuthParamsImplCopyWithImpl(
      _$AuthParamsImpl _value, $Res Function(_$AuthParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthParamsImpl implements _AuthParams {
  _$AuthParamsImpl({required this.email, required this.password});

  factory _$AuthParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthParamsImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthParams(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthParamsImplCopyWith<_$AuthParamsImpl> get copyWith =>
      __$$AuthParamsImplCopyWithImpl<_$AuthParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthParamsImplToJson(
      this,
    );
  }
}

abstract class _AuthParams implements AuthParams {
  factory _AuthParams(
      {required final String email,
      required final String password}) = _$AuthParamsImpl;

  factory _AuthParams.fromJson(Map<String, dynamic> json) =
      _$AuthParamsImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of AuthParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthParamsImplCopyWith<_$AuthParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

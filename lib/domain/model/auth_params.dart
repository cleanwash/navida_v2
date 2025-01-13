import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_params.freezed.dart';
part 'auth_params.g.dart';

@freezed
class AuthParams with _$AuthParams {
  factory AuthParams({
    required String email,
    required String password,
  }) = _AuthParams;

  factory AuthParams.fromJson(Map<String, dynamic> json) =>
      _$AuthParamsFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  factory Failure({
    int? code,
    required String message,
  }) = _Failure;

  String get errorMessage => message;
}

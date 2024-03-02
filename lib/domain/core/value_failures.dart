import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = _InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = _ShortPassword<T>;
  const factory ValueFailure.invalidPin({
    required String failedValue,
  }) = _InvalidPin<T>;
  const factory ValueFailure.emptyString({
    required String failedValue,
  }) = _EmptyString<T>;
  const factory ValueFailure.invalidNumber({
    required num failedValue,
  }) = _InvalidPrice<T>;
}

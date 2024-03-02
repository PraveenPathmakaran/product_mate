import 'package:dartz/dartz.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class LoginPin extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LoginPin(String input) {
    return LoginPin._(validatePin(input));
  }

  LoginPin._(this.value);
}

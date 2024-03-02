import 'package:dartz/dartz.dart';
import 'package:productmate/domain/core/value_failures.dart';
import 'package:productmate/domain/core/value_objects.dart';
import 'package:productmate/domain/core/value_validators.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  EmailAddress._(this.value);
}

class Password extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  Password._(this.value);
}

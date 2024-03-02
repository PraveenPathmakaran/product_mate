import 'package:dartz/dartz.dart';
import 'package:productmate/domain/core/value_failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegx =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegx).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length > 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePin(String input) {
  final pin = int.tryParse(input);
  if (pin != null && input.length <= 4 && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPin(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyString(failedValue: input));
  }
}

Either<ValueFailure<num>, num> validateNumber(String input) {
  final price = num.tryParse(input);
  if (price != null) {
    return right(price);
  } else {
    return left(const ValueFailure.invalidNumber(failedValue: -1));
  }
}

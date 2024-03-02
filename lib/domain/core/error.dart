import 'package:productmate/domain/core/value_failures.dart';

class ValueError extends Error {
  final ValueFailure valueFailure;

  ValueError(this.valueFailure);
  @override
  String toString() {
    const explanation = 'Value Failure.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class NotAuthenticatedError extends Error {}

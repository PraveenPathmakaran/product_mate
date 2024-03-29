import 'package:dartz/dartz.dart';
import 'package:productmate/domain/core/error.dart';
import 'package:productmate/domain/core/value_failures.dart';
import 'package:uuid/uuid.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  bool isValid() => value.isRight();

  Either<ValueFailure<dynamic>, Unit> failureOrUnit() =>
      value.fold((l) => left(l), (r) => right(unit));
  T getOrCrash() => value.fold((failure) => throw ValueError(failure), id);
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;
  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }
  UniqueId._(this.value);
}

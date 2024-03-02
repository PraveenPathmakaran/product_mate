import 'package:dartz/dartz.dart';
import 'package:productmate/domain/core/value_validators.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';

class ProductName extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProductName(String input) {
    return ProductName._(validateStringNotEmpty(input));
  }

  ProductName._(this.value);
}

class ProductPrice extends ValueObject {
  @override
  final Either<ValueFailure<num>, num> value;

  factory ProductPrice(String input) {
    return ProductPrice._(validateNumber(input));
  }

  ProductPrice._(this.value);
}

class MeasureMent extends ValueObject {
  @override
  final Either<ValueFailure<num>, num> value;

  factory MeasureMent(String input) {
    return MeasureMent._(validateNumber(input));
  }

  MeasureMent._(this.value);
}

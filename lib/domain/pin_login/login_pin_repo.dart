import 'package:dartz/dartz.dart';
import 'package:productmate/domain/pin_login/login_failure.dart';
import 'package:productmate/domain/pin_login/pin_value_object.dart';

abstract interface class LoginPinRepo {
  Future<Either<LoginPinFalure, Unit>> createPin({
    required LoginPin loginPin,
  });
  Future<Either<LoginPinFalure, Unit>> validatePin({
    required LoginPin loginPin,
  });
  Future<Option<bool>> isPinFound();
  Future<Either<LoginPinFalure, Unit>> deletePin();
}

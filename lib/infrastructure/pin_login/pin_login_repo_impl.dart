import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/pin_login/login_failure.dart';
import 'package:productmate/domain/pin_login/login_pin_repo.dart';

import '../../domain/pin_login/pin_value_object.dart';

@LazySingleton(as: LoginPinRepo)
class LoginPinRepoImpl implements LoginPinRepo {
  final FlutterSecureStorage _secureStorage;
  final String? _storageKey = dotenv.env['STORAGE_KEY'];

  LoginPinRepoImpl(this._secureStorage);
  @override
  Future<Either<LoginPinFalure, Unit>> createPin({
    required LoginPin loginPin,
  }) async {
    final pinData = loginPin.getOrCrash();
    try {
      await _secureStorage.write(
        key: _storageKey ?? "",
        value: pinData,
      );
      return right(unit);
    } catch (e) {
      log(e.toString(), name: 'PinLoginRepoImpl - PinLoginRepo');
      return left(const LoginPinFalure.platFormFailure());
    }
  }

  @override
  Future<Either<LoginPinFalure, Unit>> validatePin({
    required LoginPin loginPin,
  }) async {
    final pinData = loginPin.getOrCrash();
    try {
      final value = await _secureStorage.read(
        key: _storageKey!,
      );
      //check user typed key and storage key is same.
      if (value == pinData) {
        return right(unit);
      }

      return left(const LoginPinFalure.incorrectPin());
    } catch (e) {
      log(e.toString(), name: 'PinLoginRepoImpl - PinLoginRepo');
      return left(const LoginPinFalure.platFormFailure());
    }
  }

  @override
  Future<Option<bool>> isPinFound() async {
    try {
      if (_storageKey != null) {
        final value = await _secureStorage.containsKey(key: _storageKey);
        return some(value);
      } else {
        log("Storage key not found", name: 'PinLoginRepoImpl - isPinFound');
        return none();
      }
    } catch (e) {
      log(e.toString(), name: 'PinLoginRepoImpl - isPinFound');
      return none();
    }
  }

  @override
  Future<Either<LoginPinFalure, Unit>> deletePin() async {
    try {
      if (_storageKey != null) {
        await _secureStorage.delete(key: _storageKey);
        return right(unit);
      } else {
        log("Storage key not found", name: 'PinLoginRepoImpl - deletePin');
        return left(const LoginPinFalure.pinNotFoundFailure());
      }
    } catch (e) {
      log(e.toString(), name: 'PinLoginRepoImpl - deletePin');
      return left(const LoginPinFalure.platFormFailure());
    }
  }
}

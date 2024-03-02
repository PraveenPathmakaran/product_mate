import 'package:dartz/dartz.dart';
import 'package:productmate/domain/auth/auth_failures.dart';
import 'package:productmate/domain/auth/auth_value_objects.dart';
import 'package:productmate/domain/auth/user.dart';

abstract interface class AuthRepo {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Option<UserData>> getSignedInUser();
  Future<void> signOut();
}

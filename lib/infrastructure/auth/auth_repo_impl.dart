import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/auth/auth_failures.dart';
import 'package:productmate/domain/auth/auth_repo.dart';
import 'package:productmate/domain/auth/auth_value_objects.dart';
import 'package:productmate/domain/auth/user.dart';
import 'package:productmate/infrastructure/core/firebase_user_mapper.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final FirebaseAuth _firebaseAuth;

  AuthRepoImpl(this._firebaseAuth);
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final String emailString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      log(e.toString(), name: 'AuthRepoImpl-registerWithEmailAndPassword');
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final String emailString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      log(e.toString(), name: 'AuthRepoImpl-signInWithEmailAndPassword');
      if (e.code == 'invalid-credential' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<UserData>> getSignedInUser() {
    return Future.value(optionOf(_firebaseAuth.toDomain()));
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}

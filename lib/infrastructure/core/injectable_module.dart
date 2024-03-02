import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @LazySingleton()
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @LazySingleton()
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
  @LazySingleton()
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
          aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ));
}

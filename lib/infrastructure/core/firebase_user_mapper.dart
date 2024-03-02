import 'package:firebase_auth/firebase_auth.dart';
import 'package:productmate/domain/auth/user.dart';
import 'package:productmate/domain/core/value_objects.dart';

extension FirebaseUserDomain on FirebaseAuth {
  UserData? toDomain() {
    return currentUser == null
        ? null
        : UserData(userId: UniqueId.fromUniqueString(currentUser!.uid));
  }
}

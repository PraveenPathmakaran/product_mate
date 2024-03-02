import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:productmate/domain/auth/auth_repo.dart';
import 'package:productmate/injection.dart';

import '../../domain/core/error.dart';

extension AppFireStore on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<AuthRepo>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return getIt<FirebaseFirestore>()
        .collection('users')
        .doc(user.userId.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get productCollection => collection('product');
}

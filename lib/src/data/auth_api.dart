import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class AuthApi {
  AuthApi(this._auth, this._firestore, this._storage);

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Future<AppUser> create({
    required String email,
    required String password,
    required String username,
    required String photoUrl,
  }) async {
    await FirebaseAuth.instance.signInAnonymously();
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore.collection('users').get();

    final List<AppUser> users =
        snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => AppUser.fromJson(doc.data())).toList();

    await FirebaseAuth.instance.signOut();
    for (final AppUser user in users) {
      if (user.username == username) {
        throw Exception('Username already in use!');
      }
    }

    final UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    await _auth.currentUser!.updateDisplayName(username);
    await _auth.currentUser!.updatePhotoURL(photoUrl);

    final AppUser user = AppUser(
      uid: credential.user!.uid,
      email: email,
      username: username,
      photoUrl: photoUrl,
    );

    await _firestore.doc('users/${user.uid}').set(user.toJson());
    return user;
  }

  Future<AppUser> login({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);

    final DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _firestore.doc('users/${_auth.currentUser!.uid}').get();
    return AppUser.fromJson(snapshot.data()!);
  }

  Future<AppUser?> getCurrentUser() async {
    final User? currentUser = _auth.currentUser;

    if (currentUser != null) {
      final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${currentUser.uid}').get();

      if (snapshot.exists) {
        return AppUser.fromJson(snapshot.data()!);
      } else {
        final AppUser user = AppUser(
          uid: currentUser.uid,
          email: currentUser.email!,
          username: currentUser.displayName!,
          photoUrl: currentUser.photoURL!,
        );

        await _firestore.doc('users/${user.uid}').set(user.toJson());
        return user;
      }
    }
    return null;
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<List<String>> getProfilePhotos({required bool alreadyLoggedIn}) async {
    if (!alreadyLoggedIn) {
      await FirebaseAuth.instance.signInAnonymously();
    }
    final ListResult results = await _storage.ref('profile_photos').listAll();

    final List<String> photoUrls = <String>[];
    for (final Reference ref in results.items) {
      final String downloadUrl = await ref.getDownloadURL();
      photoUrls.add(downloadUrl);
    }

    if (!alreadyLoggedIn) {
      await FirebaseAuth.instance.signOut();
    }
    return photoUrls;
  }

  Future<AppUser> getUser(String uid) async {
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/$uid').get();

    return AppUser.fromJson(snapshot.data()!);
  }

  Future<void> verifyPassword(String password) async {
    final User? currentUser = _auth.currentUser;

    final AuthCredential credential = EmailAuthProvider.credential(email: currentUser!.email!, password: password);
    await currentUser.reauthenticateWithCredential(credential);
  }

  Future<void> deleteProfile(String uid) async {
    await _firestore.runTransaction<void>((Transaction transaction) async {
      final QuerySnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection('scores').where('uid', isEqualTo: uid).get();

      final List<Score> scores =
          snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Score.fromJson(doc.data())).toList();

      for (final Score score in scores) {
        transaction.delete(_firestore.doc('scores/${score.id}'));
      }

      transaction.delete(_firestore.doc('users/$uid'));
    });
    await _auth.currentUser!.delete();
  }

  Future<AppUser> updateProfile({
    required String? email,
    required String? password,
    required String? username,
    required String? photoUrl,
  }) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore.collection('users').get();

    final List<AppUser> users =
        snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => AppUser.fromJson(doc.data())).toList();

    for (final AppUser user in users) {
      if (user.username == username) {
        throw Exception('Username already in use!');
      }
    }

    if (email != null && email.isNotEmpty) {
      await _auth.currentUser!.updateEmail(email);
    }
    if (password != null && password.isNotEmpty) {
      await _auth.currentUser!.updatePassword(password);
    }
    if (username != null && username.isNotEmpty) {
      await _auth.currentUser!.updateDisplayName(username);
    }
    if (photoUrl != null) {
      await _auth.currentUser!.updatePhotoURL(photoUrl);
    }

    final AppUser user = AppUser(
      uid: _auth.currentUser!.uid,
      email: _auth.currentUser!.email!,
      username: _auth.currentUser!.displayName!,
      photoUrl: _auth.currentUser!.photoURL!,
    );

    await _firestore.doc('users/${user.uid}').set(user.toJson());
    return user;
  }
}

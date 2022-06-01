import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class GameApi {
  GameApi(this._firestore);

  final FirebaseFirestore _firestore;

  Stream<List<Score>> listenForScores() {
    return _firestore.collection('scores').snapshots().map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Score.fromJson(doc.data()))
          .toList();
    });
  }

  Future<void> addScore({
    required String uid,
    required int difficulty,
    required int score,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('scores').doc();

    final Score _score = Score(
      id: ref.id,
      uid: uid,
      difficulty: difficulty,
      score: score,
      createdAt: DateTime.now(),
    );

    await ref.set(_score.toJson());
  }

  Future<Score> removeScore(String id) async {
    late Score score;
    await _firestore.runTransaction<void>((Transaction transaction) async {
      final DocumentSnapshot<Map<String, dynamic>> snapshot = await transaction.get(_firestore.doc('scores/$id'));

      score = Score.fromJson(snapshot.data()!);

      transaction.delete(_firestore.doc('scores/$id'));
    });
    return score;
  }
}

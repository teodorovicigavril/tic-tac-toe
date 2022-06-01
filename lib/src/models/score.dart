part of 'index.dart';

@freezed
class Score with _$Score {
  const factory Score({
    required String id,
    required String uid,
    required int difficulty,
    required int score,
    required DateTime createdAt,
  }) = Score$;

  factory Score.fromJson(Map<dynamic, dynamic> json) => _$ScoreFromJson(Map<String, dynamic>.from(json));
}

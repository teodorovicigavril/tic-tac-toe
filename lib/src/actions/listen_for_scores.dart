part of 'index.dart';

@freezed
abstract class ListenForScores with _$ListenForScores implements AppAction {
  const factory ListenForScores.start() = ListenForScoresStart;

  const factory ListenForScores.done() = ListenForScoresDone;

  const factory ListenForScores.event(List<Score> scores) = OnScoresEvent;

  @Implements<ErrorAction>()
  const factory ListenForScores.error(Object error, StackTrace stackTrace) = _ListenForScoresError;
}

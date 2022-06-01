part of 'index.dart';

@freezed
class RemoveScore with _$RemoveScore implements AppAction {
  const factory RemoveScore(String id) = RemoveScoreStart;

  const factory RemoveScore.successful(Score score) = RemoveScoreSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveScore.error(Object error, StackTrace stackTrace) = RemoveScoreError;
}

part of 'index.dart';

const String _kAddScorePendingId = 'AddScore';

@freezed
class AddScore with _$AddScore implements AppAction {
  @Implements<ActionStart>()
  const factory AddScore.start(
    int score, {
    @Default(_kAddScorePendingId) String pendingId,
  }) = AddScoreStart;

  @Implements<ActionDone>()
  const factory AddScore.successful([
    @Default(_kAddScorePendingId) String pendingId,
  ]) = AddScoreSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory AddScore.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kAddScorePendingId) String pendingId,
  ]) = AddScoreError;

  static String get pendingKey => _kAddScorePendingId;
}

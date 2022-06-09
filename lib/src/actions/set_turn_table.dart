part of 'index.dart';

@freezed
class SetTurnTable with _$SetTurnTable implements AppAction {
  const factory SetTurnTable({
    required Tuple2<int, int> piece,
    required int index,
    required BuildContext context,
    required int difficulty,
    required bool opponentStarts,
    required int initialPlayer,
  }) = SetTurnTableStart;

  const factory SetTurnTable.successful() = SetTurnTableSuccessful;

  @Implements<ErrorAction>()
  const factory SetTurnTable.error(Object error, StackTrace stackTrace) = SetTurnTableError;
}

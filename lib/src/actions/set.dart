part of 'index.dart';

@freezed
class SetProfilePhoto with _$SetProfilePhoto implements AppAction {
  const factory SetProfilePhoto(int selectedProfilePhoto) = SetProfilePhoto$;
}

@freezed
class SetDifficulty with _$SetDifficulty implements AppAction {
  const factory SetDifficulty(int difficulty) = SetDifficulty$;
}

@freezed
class SetDifficultyColor with _$SetDifficultyColor implements AppAction {
  const factory SetDifficultyColor(int position) = SetDifficultyColor$;
}

@freezed
class SetSelectedPiece with _$SetSelectedPiece implements AppAction {
  const factory SetSelectedPiece(Tuple2<int, int> piece) = SetSelectedPiece$;
}

@freezed
class SetPieceToTable with _$SetPieceToTable implements AppAction {
  const factory SetPieceToTable(Tuple2<int, int> piece, int position) = SetPieceToTable$;
}

@freezed
class SetGameStatus with _$SetGameStatus implements AppAction {
  const factory SetGameStatus(int status) = SetGameStatus$;
}

@freezed
class SetAvailablePlayerOnePiece with _$SetAvailablePlayerOnePiece implements AppAction {
  const factory SetAvailablePlayerOnePiece({required int piece, required bool remove}) = SetAvailablePlayerOnePiece$;
}

@freezed
class SetAvailablePlayerTwoPiece with _$SetAvailablePlayerTwoPiece implements AppAction {
  const factory SetAvailablePlayerTwoPiece({required int piece, required bool remove}) = SetAvailablePlayerTwoPiece$;
}

@freezed
class SetInitGame with _$SetInitGame implements AppAction {
  const factory SetInitGame(int playerTurn, [@Default(-1) int difficulty]) = SetInitGame$;
}

@freezed
class SetPlayerTurn with _$SetPlayerTurn implements AppAction {
  const factory SetPlayerTurn(int player) = SetPlayerTurn$;
}

@freezed
class DecreaseScore with _$DecreaseScore implements AppAction {
  const factory DecreaseScore(int points) = DecreaseScore$;
}

@freezed
class SetShowMyTableScore with _$SetShowMyTableScore implements AppAction {
  const factory SetShowMyTableScore(int difficulty) = SetShowMyTableScore$;
}

@freezed
class SetProfileErrorMessage with _$SetProfileErrorMessage implements AppAction {
  const factory SetProfileErrorMessage(String message) = SetProfileErrorMessage$;
}

@freezed
class SetUserToNull with _$SetUserToNull implements AppAction {
  const factory SetUserToNull() = SetUserToNull$;
}

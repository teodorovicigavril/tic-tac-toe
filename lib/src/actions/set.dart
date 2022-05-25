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
class SetAvailablePlayerOnePiece with _$SetAvailablePlayerOnePiece implements AppAction {
  const factory SetAvailablePlayerOnePiece(int piece) = SetAvailablePlayerOnePiece$;
}

@freezed
class SetAvailablePlayerTwoPiece with _$SetAvailablePlayerTwoPiece implements AppAction {
  const factory SetAvailablePlayerTwoPiece(int piece) = SetAvailablePlayerTwoPiece$;
}

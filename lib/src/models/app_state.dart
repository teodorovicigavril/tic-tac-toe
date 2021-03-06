part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(-1)
        int selectedDifficulty,
    AppUser? user,
    @Default(<String>[])
        List<String> photoUrls,
    @Default(0)
        int selectedProfilePhoto,
    @Default(<bool>[false, false, false])
        List<bool> difficultyColors,
    @Default(0)
        int gameStatus, // 0 -started, 1 - win, 2 - lose, 3 - tie
    @Default(<Tuple2<int, int>>[
      Tuple2<int, int>(-1, -1),
      Tuple2<int, int>(-1, -1),
      Tuple2<int, int>(-1, -1),
      Tuple2<int, int>(-1, -1),
      Tuple2<int, int>(-1, -1),
      Tuple2<int, int>(-1, -1),
      Tuple2<int, int>(-1, -1),
      Tuple2<int, int>(-1, -1),
      Tuple2<int, int>(-1, -1),
    ])
        List<Tuple2<int, int>> table,
    @Default(<int>[1, 2, 3, 4, 5, 6])
        List<int> availablePlayerOnePieces,
    @Default(<int>[1, 2, 3, 4, 5, 6])
        List<int> availablePlayerTwoPieces,
    @Default(Tuple2<int, int>(-1, -1))
        Tuple2<int, int> selectedPiece,
    @Default(1)
        int playerTurn,
    @Default(109)
        int score,
    @Default(<Score>[])
        List<Score> scores,
    @Default(<String>{})
        Set<String> pending,
    @Default(<String, AppUser>{})
        Map<String, AppUser> users,
    @Default(<bool>[false, false, false])
        List<bool> showMyTableScore,
    @Default('')
        String profileErrorMessage,
    @Default(1) int numberOfRounds,
    @Default('you first') String playerOrderForOnline,
    @Default(<String, dynamic>{}) Map<String, dynamic> room,
    AppUser? playerOneOnline,
    AppUser? playerTwoOnline,
    @Default(true) bool playerOneReady,
    @Default(true) bool playerTwoReady,
  }) = AppState$;
}

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
    @Default(<Color>[Colors.grey, Colors.grey, Colors.grey])
        List<Color> difficultyColors,
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
  }) = AppState$;
}

import 'dart:math';

import 'package:tuple/tuple.dart';

bool isMovesLeft(List<Tuple2<int, int>> table, int size, int opponent) {
  for (final Tuple2<int, int> element in table) {
    if (element.item1 == -1 || (element.item1 == opponent && element.item2 < size)) {
      return true;
    }
  }
  return false;
}

int evaluate(List<Tuple2<int, int>> table) {
  for (int row = 0; row < 9; row += 3) {
    if (table[row].item1 == table[row + 1].item1 && table[row + 1].item1 == table[row + 2].item1) {
      if (table[row].item1 == 1) {
        return -10;
      } else if (table[row].item1 == 2) {
        return 10;
      }
    }
  }

  for (int col = 0; col < 3; col += 1) {
    if (table[col].item1 == table[col + 3].item1 && table[col + 3].item1 == table[col + 6].item1) {
      if (table[col].item1 == 1) {
        return -10;
      } else if (table[col].item1 == 2) {
        return 10;
      }
    }
  }

  if (table[0].item1 == table[4].item1 && table[4].item1 == table[8].item1) {
    if (table[0].item1 == 1) {
      return -10;
    } else if (table[0].item1 == 2) {
      return 10;
    }
  }

  if (table[2].item1 == table[4].item1 && table[4].item1 == table[6].item1) {
    if (table[2].item1 == 1) {
      return -10;
    } else if (table[2].item1 == 2) {
      return 10;
    }
  }

  return 0;
}

int minimax({required List<Tuple2<int, int>> table, required int depth, required bool isMax, required int size}) {
  final int score = evaluate(table);

  if (score == 10) {
    return score;
  }

  if (score == -10) {
    return score;
  }

  if (isMovesLeft(table, size, 1) == false) {
    return 0;
  }

  if (isMax) {
    int best = -1000;
    for (int index = 0; index < table.length; index++) {
      if (table[index].item1 == -1 || (table[index].item1 == 1 && table[index].item2 < size)) {
        final Tuple2<int, int> copyPosition = table[index];
        table[index] = Tuple2<int, int>(2, size);
        best = max(best, minimax(table: table, depth: depth + 1, isMax: !isMax, size: size));
        table[index] = copyPosition;
      }
    }
    return best;
  } else {
    int best = 1000;
    for (int index = 0; index < table.length; index++) {
      if (table[index].item1 == -1 || (table[index].item1 == 2 && table[index].item2 < size)) {
        final Tuple2<int, int> copyPosition = table[index];
        table[index] = Tuple2<int, int>(1, size);
        best = min(best, minimax(table: table, depth: depth + 1, isMax: !isMax, size: size));
        table[index] = copyPosition;
      }
    }
    return best;
  }
}

Tuple2<int, int> findBestMove(List<Tuple2<int, int>> table, List<int> myPieces) {
  int bestVal = -1000;
  int bestMove = -1;

  final int randomSize = myPieces[Random().nextInt(myPieces.length)];
  for (int index = 0; index < table.length; index++) {
    if (table[index].item1 == -1 || (table[index].item1 == 1 && table[index].item2 < randomSize)) {
      final Tuple2<int, int> copyPosition = table[index];
      table[index] = Tuple2<int, int>(2, randomSize);
      final int moveVal = minimax(table: table, depth: 0, isMax: false, size: randomSize);
      table[index] = copyPosition;

      if (moveVal > bestVal) {
        bestMove = index;
        bestVal = moveVal;
      }
    }
  }
  return Tuple2<int, int>(bestMove, randomSize);
}

Tuple2<int, int> findBestMoveHard(List<Tuple2<int, int>> table, List<int> myPieces, List<int> opponentPieces) {
  int bestVal = -1000;
  int bestMove = -1;
  int size = -1;

  bool doMinimax = true;
  int positionForDefend = -1;

  if (opponentPieces.isNotEmpty) {
    for (int index = 0; index < table.length; index++) {
      if (table[index].item1 == -1) {
        final Tuple2<int, int> copyPosition = table[index];
        table[index] = Tuple2<int, int>(1, opponentPieces[opponentPieces.length - 1]);
        if (evaluate(table) == -10) {
          doMinimax = false;
          positionForDefend = index;
          break;
        }
        table[index] = copyPosition;
      }
    }
  }

  if (doMinimax) {
    for (final int pieceSize in myPieces) {
      for (int index = 0; index < table.length; index++) {
        if (table[index].item1 == -1 || (table[index].item1 == 1 && table[index].item2 < pieceSize)) {
          final Tuple2<int, int> copyPosition = table[index];
          table[index] = Tuple2<int, int>(2, pieceSize);
          final int moveVal = minimax(table: table, depth: 0, isMax: false, size: pieceSize);
          table[index] = copyPosition;

          if (moveVal > bestVal) {
            size = pieceSize;
            bestMove = index;
            bestVal = moveVal;
          }
        }
      }
    }
  }
  if (doMinimax) {
    return Tuple2<int, int>(bestMove, size);
  } else {
    return Tuple2<int, int>(positionForDefend, myPieces[myPieces.length - 1]);
  }
}

Tuple2<int, int> findBestMoveEasy(List<Tuple2<int, int>> table, List<int> myPieces) {
  while (true) {
    final int randomSize = myPieces[Random().nextInt(myPieces.length)];
    final int randomPosition = Random().nextInt(9);

    if (!isMovesLeft(table, randomSize, 1) && randomSize > 0) {
      return Tuple2<int, int>(-1, randomSize);
    }

    if ((table[randomPosition].item1 == -1) ||
        (table[randomPosition].item1 == 1 && table[randomPosition].item2 < randomSize)) {
      return Tuple2<int, int>(randomPosition, randomSize);
    }
  }
}

bool checkTie(List<int> playerOnePieces, List<int> playerTwoPieces) {
  if (playerOnePieces.isEmpty && playerTwoPieces.isEmpty) {
    return true;
  }

  late int maxPlayerOnePiece;
  if (playerOnePieces.isNotEmpty) {
    maxPlayerOnePiece = playerOnePieces.reduce(max);
  } else {
    return false;
  }

  late int maxPlayerTwoPiece;
  if (playerTwoPieces.isNotEmpty) {
    maxPlayerTwoPiece = playerTwoPieces.reduce(max);
  } else {
    return false;
  }

  if (maxPlayerOnePiece < 0 && maxPlayerTwoPiece < 0) {
    return true;
  }

  return false;
}

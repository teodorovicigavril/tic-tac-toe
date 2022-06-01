import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/game_status_container.dart';
import 'package:tic_tac_toe/src/containers/piece_container.dart';
import 'package:tic_tac_toe/src/containers/player_one_pieces_container.dart';
import 'package:tic_tac_toe/src/containers/player_turn_container.dart';
import 'package:tic_tac_toe/src/containers/player_two_pieces_container.dart';
import 'package:tic_tac_toe/src/containers/selected_difficulty_container.dart';
import 'package:tic_tac_toe/src/containers/table_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

class DifficultyOfflinePage extends StatefulWidget {
  const DifficultyOfflinePage({Key? key}) : super(key: key);

  @override
  State<DifficultyOfflinePage> createState() => _DifficultyOfflinePageState();
}

class _DifficultyOfflinePageState extends State<DifficultyOfflinePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectedDifficultyContainer(
        builder: (BuildContext context, int difficulty) {
          if (difficulty == 2) {
            return const Center(child: Text('Not implemented yet!'));
          }
          return GameStatusContainer(
            builder: (BuildContext context, int gameStatus) {
              return TableContainer(
                builder: (BuildContext context, List<Tuple2<int, int>> table) {
                  return PieceContainer(
                    builder: (BuildContext context, Tuple2<int, int> piece) {
                      return SingleChildScrollView(
                        child: PlayerTurnContainer(
                          builder: (BuildContext context, int playerTurn) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    playerTurn == 1 && gameStatus == 0
                                        ? 'Your turn...'
                                        : playerTurn == 2 && gameStatus == 0
                                            ? 'Opponent turn...'
                                            : 'Game Ended!',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        margin: const EdgeInsets.all(8),
                                        height: 94,
                                        color: Colors.black26,
                                        width: MediaQuery.of(context).size.width - 24,
                                      ),
                                    ),
                                    PlayerTwoPiecesContainer(
                                      builder: (BuildContext context, List<int> playerTwoPieces) {
                                        return Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: List<Widget>.generate(
                                              playerTwoPieces.length,
                                              (int index) => Padding(
                                                padding: const EdgeInsets.all(3),
                                                child: Container(
                                                  width: 24 +
                                                      (playerTwoPieces[index] < 0
                                                              ? -playerTwoPieces[index] - 1
                                                              : playerTwoPieces[index] - 1) *
                                                          10,
                                                  height: 24 +
                                                      (playerTwoPieces[index] < 0
                                                              ? -playerTwoPieces[index] - 1
                                                              : playerTwoPieces[index] - 1) *
                                                          10,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    boxShadow: const <BoxShadow>[
                                                      BoxShadow(blurRadius: 10, offset: Offset(1, 3))
                                                    ],
                                                    color: playerTwoPieces[index] > 0
                                                        ? Colors.deepPurple
                                                        : Colors.redAccent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                PlayerOnePiecesContainer(
                                  builder: (BuildContext context, List<int> playerOnePieces) {
                                    return PlayerTwoPiecesContainer(
                                      builder: (BuildContext context, List<int> playerTwoPieces) {
                                        return SelectedDifficultyContainer(
                                          builder: (BuildContext context, int difficulty) {
                                            return GameStatusContainer(
                                              builder: (BuildContext context, int gameStatus) {
                                                return GridView.builder(
                                                  physics: const NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                  ),
                                                  itemCount: 9,
                                                  itemBuilder: (BuildContext context, int index) {
                                                    return GestureDetector(
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Container(
                                                            decoration: BoxDecoration(
                                                              color: Colors.amber,
                                                              border: Border.all(
                                                                width: 2,
                                                              ),
                                                            ),
                                                          ),
                                                          AnimatedOpacity(
                                                            opacity: table[index].item1 != -1 ? 1.0 : 0.0,
                                                            duration: const Duration(milliseconds: 300),
                                                            child: Center(
                                                              child: AnimatedContainer(
                                                                width: (table[index].item2 - 1) * 10 + 24,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  color: table[index].item1 == 1
                                                                      ? Colors.green
                                                                      : Colors.deepPurple,
                                                                  boxShadow: const <BoxShadow>[
                                                                    BoxShadow(blurRadius: 10, offset: Offset(1, 3))
                                                                  ],
                                                                ),
                                                                duration: const Duration(milliseconds: 300),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      onTap: () {
                                                        if (piece.item1 != -1) {
                                                          StoreProvider.of<AppState>(context).dispatch(
                                                            SetTurnTableStart(
                                                              index: index,
                                                              piece: piece,
                                                              context: context,
                                                              difficulty: difficulty,
                                                            ),
                                                          );
                                                        }
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        margin: const EdgeInsets.all(8),
                                        height: 94,
                                        color: Colors.black26,
                                        width: MediaQuery.of(context).size.width - 24,
                                      ),
                                    ),
                                    PlayerOnePiecesContainer(
                                      builder: (BuildContext context, List<int> playerOnePieces) {
                                        return Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: List<Widget>.generate(
                                              playerOnePieces.length,
                                              (int index) => GestureDetector(
                                                onTap: () {
                                                  if (gameStatus == 0 && playerOnePieces[index] > 0) {
                                                    if (piece.item1 == 1 && piece.item2 == playerOnePieces[index]) {
                                                      StoreProvider.of<AppState>(context)
                                                          .dispatch(const SetSelectedPiece(Tuple2<int, int>(-1, -1)));
                                                    } else {
                                                      StoreProvider.of<AppState>(context).dispatch(
                                                        SetSelectedPiece(Tuple2<int, int>(1, playerOnePieces[index])),
                                                      );
                                                    }
                                                  }
                                                },
                                                child: DottedBorder(
                                                  borderType: BorderType.Circle,
                                                  dashPattern: const <double>[10, 10],
                                                  color: piece.item1 == 1 && piece.item2 == playerOnePieces[index]
                                                      ? Colors.black38
                                                      : Colors.transparent,
                                                  strokeWidth: 2,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(3),
                                                    child: Container(
                                                      width: 24 +
                                                          (playerOnePieces[index] < 0
                                                                  ? -playerOnePieces[index] - 1
                                                                  : playerOnePieces[index] - 1) *
                                                              10,
                                                      height: 24 +
                                                          (playerOnePieces[index] < 0
                                                                  ? -playerOnePieces[index] - 1
                                                                  : playerOnePieces[index] - 1) *
                                                              10,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        boxShadow: const <BoxShadow>[
                                                          BoxShadow(blurRadius: 10, offset: Offset(1, 3))
                                                        ],
                                                        color: playerOnePieces[index] > 0
                                                            ? Colors.green
                                                            : Colors.redAccent,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SelectedDifficultyContainer(
                                      builder: (BuildContext context, int difficulty) {
                                        return GestureDetector(
                                          onTap: () {
                                            showDialog<Widget>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: const Text('WARNING!'),
                                                  content: Text(
                                                    gameStatus == 0
                                                        ? 'If you do this action, current progress will be lost!'
                                                        : 'The game will be restarted...',
                                                  ),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () {
                                                        StoreProvider.of<AppState>(context)
                                                            .dispatch(SetInitGame(difficulty));
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: const Text('OK'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: const Text('Cancel'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
                                            decoration: const BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.all(Radius.circular(15)),
                                            ),
                                            height: 40,
                                            width: 100,
                                            child: const Center(
                                              child: Text(
                                                'Restart',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog<Widget>(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text('WARNING!'),
                                              content: Text(
                                                gameStatus == 0
                                                    ? 'If you leave now the progress will be lost!'
                                                    : 'Leaving game...',
                                              ),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
                                                  },
                                                  child: const Text('OK'),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('Cancel'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                        ),
                                        height: 40,
                                        width: 100,
                                        child: const Center(
                                          child: Text(
                                            'Leave',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

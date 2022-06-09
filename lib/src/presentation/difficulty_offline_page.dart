import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
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
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false);

    if (_store.state.playerTurn == 2) {
      _store.dispatch(
        SetTurnTableStart(
          index: -1,
          difficulty: _store.state.selectedDifficulty,
          piece: const Tuple2<int, int>(-1, -1),
          opponentStarts: true,
          context: context,
          initialPlayer: 2,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final int initPlayerTurn = _store.state.playerTurn;

    return Scaffold(
      body: SelectedDifficultyContainer(
        builder: (BuildContext context, int difficulty) {
          return GameStatusContainer(
            builder: (BuildContext context, int gameStatus) {
              return TableContainer(
                builder: (BuildContext context, List<Tuple2<int, int>> table) {
                  return PieceContainer(
                    builder: (BuildContext context, Tuple2<int, int> piece) {
                      return SingleChildScrollView(
                        child: PlayerTurnContainer(
                          builder: (BuildContext context, int playerTurn) {
                            return Container(
                              margin: const EdgeInsets.only(left: 8, right: 8, top: 56),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    playerTurn == 1 && gameStatus == 0
                                        ? 'Your turn...'
                                        : playerTurn == 2 && gameStatus == 0
                                            ? 'Opponent turn...'
                                            : 'Game Ended!',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      shadows: <Shadow>[
                                        Shadow(
                                          blurRadius: 40,
                                          color: Colors.blue,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.02,
                                  ),
                                  Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: <Widget>[
                                      Center(
                                        child: Container(
                                          height: 94,
                                          color: Colors.blueAccent.withOpacity(0.2),
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
                                                  padding: const EdgeInsets.all(5),
                                                  child: Container(
                                                    width: (width - 50) /
                                                        6 /
                                                        4 *
                                                        (playerTwoPieces[index] > 0
                                                            ? playerTwoPieces[index]
                                                            : -playerTwoPieces[index]),
                                                    height: (width - 50) /
                                                        6 /
                                                        4 *
                                                        (playerTwoPieces[index] > 0
                                                            ? playerTwoPieces[index]
                                                            : -playerTwoPieces[index]),
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
                                                                color: Colors.blue,
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
                                                                  width: (width - 50) / 6 / 4 * (table[index].item2) > 0
                                                                      ? (width - 50) / 6 / 4 * (table[index].item2)
                                                                      : 1,
                                                                  decoration: BoxDecoration(
                                                                    shape: BoxShape.circle,
                                                                    color: table[index].item1 == 1
                                                                        ? Colors.white
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
                                                                opponentStarts: false,
                                                                initialPlayer: initPlayerTurn,
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
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.03,
                                  ),
                                  Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: <Widget>[
                                      Center(
                                        child: Container(
                                          height: 94,
                                          // color: Color.fromRGBO(68, 141, 141, 1.0),
                                          color: Colors.blueAccent.withOpacity(0.2),
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
                                                    if (gameStatus == 0 && playerOnePieces[index] > 0 && playerTurn == 1) {
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
                                                        ? Colors.white
                                                        : Colors.transparent,
                                                    strokeWidth: 2,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(3),
                                                      child: Container(
                                                        width: (width - 50) /
                                                            6 /
                                                            4 *
                                                            (playerOnePieces[index] > 0
                                                                ? playerOnePieces[index]
                                                                : -playerOnePieces[index]),
                                                        height: (width - 50) /
                                                            6 /
                                                            4 *
                                                            (playerOnePieces[index] > 0
                                                                ? playerOnePieces[index]
                                                                : -playerOnePieces[index]),
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          boxShadow: const <BoxShadow>[
                                                            BoxShadow(blurRadius: 10, offset: Offset(1, 3))
                                                          ],
                                                          color: playerOnePieces[index] > 0
                                                              ? Colors.white
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
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.02,
                                  ),
                                  PlayerOnePiecesContainer(
                                    builder: (BuildContext context, List<int> playerOnePieces) {
                                      return Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            decoration: const BoxDecoration(
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                  color: Colors.blue,
                                                  blurRadius: 5,
                                                ),
                                              ],
                                            ),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog<Widget>(
                                                  barrierDismissible: false,
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return AlertDialog(
                                                      backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
                                                      title: const Center(
                                                        child: Text(
                                                          'WARNING!',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 24,
                                                            shadows: <Shadow>[
                                                              Shadow(
                                                                blurRadius: 40,
                                                                color: Colors.blue,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      content: Text(
                                                        gameStatus == 0 && playerOnePieces.length != 6
                                                            ? 'If you do this action, current progress will be lost!'
                                                            : 'The game will be restarted...',
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                          shadows: <Shadow>[
                                                            Shadow(
                                                              blurRadius: 40,
                                                              color: Colors.red,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      actionsAlignment: MainAxisAlignment.center,
                                                      actions: <Widget>[
                                                        Container(
                                                          margin: const EdgeInsets.all(8),
                                                          decoration: const BoxDecoration(
                                                            boxShadow: <BoxShadow>[
                                                              BoxShadow(
                                                                color: Colors.blue,
                                                                blurRadius: 5,
                                                              ),
                                                            ],
                                                          ),
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              StoreProvider.of<AppState>(context)
                                                                  .dispatch(SetInitGame(initPlayerTurn, difficulty));
                                                              if (_store.state.playerTurn == 2) {
                                                                _store.dispatch(
                                                                  SetTurnTableStart(
                                                                    index: -1,
                                                                    difficulty: _store.state.selectedDifficulty,
                                                                    piece: const Tuple2<int, int>(-1, -1),
                                                                    opponentStarts: true,
                                                                    context: context,
                                                                    initialPlayer: initPlayerTurn,
                                                                  ),
                                                                );
                                                              }
                                                              Navigator.of(context).pop();
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                              minimumSize: Size(
                                                                MediaQuery.of(context).size.width * 0.25,
                                                                50,
                                                              ),
                                                            ),
                                                            child: const Text(
                                                              'OK',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: const EdgeInsets.all(8),
                                                          decoration: const BoxDecoration(
                                                            boxShadow: <BoxShadow>[
                                                              BoxShadow(
                                                                color: Colors.blue,
                                                                blurRadius: 5,
                                                              ),
                                                            ],
                                                          ),
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.of(context).pop();
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                              minimumSize: Size(
                                                                MediaQuery.of(context).size.width * 0.25,
                                                                50,
                                                              ),
                                                            ),
                                                            child: const Text(
                                                              'Cancel',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                minimumSize: Size(
                                                  MediaQuery.of(context).size.width * 0.35,
                                                  50,
                                                ),
                                              ),
                                              child: const Text(
                                                'Restart',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: const BoxDecoration(
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                  color: Colors.blue,
                                                  blurRadius: 5,
                                                )
                                              ],
                                            ),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog<Widget>(
                                                  context: context,
                                                  barrierDismissible: false,
                                                  builder: (BuildContext context) {
                                                    return AlertDialog(
                                                      backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
                                                      title: const Center(
                                                        child: Text(
                                                          'WARNING!',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 24,
                                                            shadows: <Shadow>[
                                                              Shadow(
                                                                blurRadius: 40,
                                                                color: Colors.blue,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      content: Text(
                                                        gameStatus == 0 && playerOnePieces.length != 6
                                                            ? 'If you leave now the progress will be lost!'
                                                            : 'Leaving game...',
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                          shadows: <Shadow>[
                                                            Shadow(
                                                              blurRadius: 40,
                                                              color: Colors.red,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      actionsAlignment: MainAxisAlignment.center,
                                                      actions: <Widget>[
                                                        Container(
                                                          margin: const EdgeInsets.all(8),
                                                          decoration: const BoxDecoration(
                                                            boxShadow: <BoxShadow>[
                                                              BoxShadow(
                                                                color: Colors.blue,
                                                                blurRadius: 5,
                                                              ),
                                                            ],
                                                          ),
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.pushNamedAndRemoveUntil(
                                                                context,
                                                                '/',
                                                                (_) => false,
                                                              );
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                              minimumSize: Size(
                                                                MediaQuery.of(context).size.width * 0.25,
                                                                50,
                                                              ),
                                                            ),
                                                            child: const Text(
                                                              'OK',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: const EdgeInsets.all(8),
                                                          decoration: const BoxDecoration(
                                                            boxShadow: <BoxShadow>[
                                                              BoxShadow(
                                                                color: Colors.blue,
                                                                blurRadius: 5,
                                                              ),
                                                            ],
                                                          ),
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.pop(context);
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                              minimumSize: Size(
                                                                MediaQuery.of(context).size.width * 0.25,
                                                                50,
                                                              ),
                                                            ),
                                                            child: const Text(
                                                              'Cancel',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                minimumSize: Size(
                                                  MediaQuery.of(context).size.width * 0.35,
                                                  50,
                                                ),
                                              ),
                                              child: const Text(
                                                'Leave',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.04,
                                  ),
                                ],
                              ),
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

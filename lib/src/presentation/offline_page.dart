import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/difficulty_colors_container.dart';
import 'package:tic_tac_toe/src/containers/piece_container.dart';
import 'package:tic_tac_toe/src/containers/player_one_pieces_container.dart';
import 'package:tic_tac_toe/src/containers/player_two_pieces_container.dart';
import 'package:tic_tac_toe/src/containers/selected_difficulty_container.dart';
import 'package:tic_tac_toe/src/containers/table_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

class OfflinePage extends StatefulWidget {
  const OfflinePage({Key? key}) : super(key: key);

  @override
  State<OfflinePage> createState() => _OfflinePageState();
}

class _OfflinePageState extends State<OfflinePage> {
  int _localDifficulty = -1;

  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(const SetDifficultyColor(-1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playing Against Computer'),
      ),
      body: SelectedDifficultyContainer(
        builder: (BuildContext context, int difficulty) {
          if (difficulty == -1) {
            return DifficultyColorsContainer(
              builder: (BuildContext context, List<Color> colors) {
                return Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 32),
                  child: Column(
                    children: <Widget>[
                      const Text('Please select difficulty!'),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              _localDifficulty = 0;
                              StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                color: colors[0],
                                borderRadius: const BorderRadius.all(Radius.circular(15)),
                              ),
                              height: 40,
                              width: 100,
                              child: const Center(
                                child: Text(
                                  'Easy',
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _localDifficulty = 1;
                              StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: colors[1],
                                borderRadius: const BorderRadius.all(Radius.circular(15)),
                              ),
                              height: 40,
                              width: 100,
                              child: const Center(
                                child: Text(
                                  'Medium',
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _localDifficulty = 2;
                              StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                color: colors[2],
                                borderRadius: const BorderRadius.all(Radius.circular(15)),
                              ),
                              height: 40,
                              width: 100,
                              child: const Center(
                                child: Text(
                                  'Hard',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(SetDifficulty(_localDifficulty));
                        },
                        child: const Text(
                          'Start',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return PieceContainer(
              builder: (BuildContext context, Tuple2<int, int> piece) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Opponents UserName'),
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
                                        (int index) => GestureDetector(
                                      onTap: () {
                                        if (piece.item1 == 2 && piece.item2 == playerTwoPieces[index]) {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(const SetSelectedPiece(Tuple2<int, int>(-1, -1)));
                                        } else {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(SetSelectedPiece(Tuple2<int, int>(2, playerTwoPieces[index])));
                                        }
                                      },
                                      child: DottedBorder(
                                        borderType: BorderType.Circle,
                                        dashPattern: const<double> [10, 10],
                                        color: piece.item1 == 2 && piece.item2 == playerTwoPieces[index] ? Colors.black38 : Colors.transparent,
                                        strokeWidth: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: Container(
                                            width: 24 + (playerTwoPieces[index] - 1) * 10,
                                            height: 24 + (playerTwoPieces[index] - 1) * 10,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(blurRadius: 10,offset: Offset(1,3))
                                              ],
                                              color: Colors.deepPurple,
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
                      TableContainer(
                        builder: (BuildContext context, List<Tuple2<int, int>> table) {
                          return GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            itemCount: 9,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  if (piece.item1 != -1) {
                                    StoreProvider.of<AppState>(context).dispatch(SetPieceToTable(piece, index));
                                    StoreProvider.of<AppState>(context)
                                        .dispatch(const SetSelectedPiece(Tuple2<int, int>(-1, -1)));
                                    if (piece.item1 == 1) {
                                      StoreProvider.of<AppState>(context)
                                          .dispatch(SetAvailablePlayerOnePiece(piece.item2));
                                    } else {
                                      StoreProvider.of<AppState>(context)
                                          .dispatch(SetAvailablePlayerTwoPiece(piece.item2));
                                    }
                                  }
                                },
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
                                            color: table[index].item1 == 1 ? Colors.green : Colors.deepPurple,
                                            boxShadow: const <BoxShadow>[
                                              BoxShadow(blurRadius: 10,offset: Offset(1,3))
                                            ],
                                          ),
                                          duration: const Duration(milliseconds: 300),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                        if (piece.item1 == 1 && piece.item2 == playerOnePieces[index]) {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(const SetSelectedPiece(Tuple2<int, int>(-1, -1)));
                                        } else {
                                          StoreProvider.of<AppState>(context)
                                            .dispatch(SetSelectedPiece(Tuple2<int, int>(1, playerOnePieces[index])));
                                        }
                                      },
                                      child: DottedBorder(
                                        borderType: BorderType.Circle,
                                        dashPattern: const<double> [10, 10],
                                        color: piece.item1 == 1 && piece.item2 == playerOnePieces[index] ? Colors.black38 : Colors.transparent,
                                        strokeWidth: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: Container(
                                            width: 24 + (playerOnePieces[index] - 1) * 10,
                                            height: 24 + (playerOnePieces[index] - 1) * 10,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(blurRadius: 10,offset: Offset(1,3))
                                              ],
                                              color: Colors.green,
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
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black38,
                        ),
                        child: const Text('Give Up'),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

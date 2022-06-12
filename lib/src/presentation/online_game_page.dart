import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/game_status_container.dart';
import 'package:tic_tac_toe/src/containers/piece_container.dart';
import 'package:tic_tac_toe/src/containers/player_one_online_container.dart';
import 'package:tic_tac_toe/src/containers/player_one_pieces_container.dart';
import 'package:tic_tac_toe/src/containers/player_one_ready_container.dart';
import 'package:tic_tac_toe/src/containers/player_turn_container.dart';
import 'package:tic_tac_toe/src/containers/player_two_online_container.dart';
import 'package:tic_tac_toe/src/containers/player_two_pieces_container.dart';
import 'package:tic_tac_toe/src/containers/player_two_ready_container.dart';
import 'package:tic_tac_toe/src/containers/room_container.dart';
import 'package:tic_tac_toe/src/containers/selected_difficulty_container.dart';
import 'package:tic_tac_toe/src/containers/table_container.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/presentation/scoreboard_online.dart';
import 'package:tic_tac_toe/src/presentation/waiting_lobby.dart';
import 'package:tic_tac_toe/src/resources/socket_methods.dart';
import 'package:tic_tac_toe/src/responsive/responsive.dart';
import 'package:tuple/tuple.dart';

class OnlineGamePage extends StatefulWidget {
  const OnlineGamePage({Key? key}) : super(key: key);

  @override
  State<OnlineGamePage> createState() => _OnlineGamePageState();
}

class _OnlineGamePageState extends State<OnlineGamePage> {
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    super.initState();
    _socketMethods
      ..updateRoomListener(context)
      ..updatePlayersStateListener(context)
      ..tappedListener(context)
      ..setReadyForUserListener(context);
  }

  @override
  Widget build(BuildContext context) {
    final double width = min(MediaQuery.of(context).size.width, 400);
    return RoomContainer(
      builder: (BuildContext context, Map<String, dynamic> room) {
        return PlayerOneOnlineContainer(
          builder: (BuildContext context, AppUser? playerOne) {
            return PlayerTwoOnlineContainer(
              builder: (BuildContext context, AppUser? playerTwo) {
                if (room['isJoin'] == true) {
                  return const WaitingLobby();
                }
                return Scaffold(
                  body: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: width,
                      ),
                      child: UserContainer(
                        builder: (BuildContext context, AppUser? user) {
                          return PieceContainer(
                            builder: (BuildContext context, Tuple2<int, int> piece) {
                              return GameStatusContainer(
                                builder: (BuildContext context, int gameStatus) {
                                  return RoomContainer(
                                    builder: (BuildContext context, Map<String, dynamic> room) {
                                      return PlayerOneOnlineContainer(
                                        builder: (BuildContext context, AppUser? playerOne) {
                                          return PlayerTwoOnlineContainer(
                                            builder: (BuildContext context, AppUser? playerTwo) {
                                              return PlayerOneReadyContainer(
                                                builder: (BuildContext context, bool playerOneReady) {
                                                  return PlayerTwoReadyContainer(
                                                    builder: (BuildContext context, bool playerTwoReady) {
                                                      bool waitPlayer = false;
                                                      if (gameStatus == 0) {
                                                        if ((playerOneReady && !playerTwoReady) ||
                                                            (!playerOneReady && playerTwoReady)) {
                                                          waitPlayer = true;
                                                        }
                                                      }
                                                      return SingleChildScrollView(
                                                        child: Container(
                                                          margin: const EdgeInsets.only(top: 48, left: 16, right: 16),
                                                          child: Column(
                                                            children: <Widget>[
                                                              Builder(
                                                                builder: (BuildContext context) {
                                                                  if (waitPlayer) {
                                                                    return const Text(
                                                                      'Waiting for opponent',
                                                                      style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontWeight: FontWeight.bold,
                                                                        fontSize: 28,
                                                                        shadows: <Shadow>[
                                                                          Shadow(
                                                                            blurRadius: 40,
                                                                            color: Colors.blue,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  }
                                                                  return Text(
                                                                    room['turn'] == 1 && gameStatus == 0
                                                                        ? "${playerOne!.username}'s turn"
                                                                        : room['turn'] == 2 && gameStatus == 0
                                                                            ? "${playerTwo!.username}'s turn"
                                                                            : 'Round Ended!',
                                                                    style: const TextStyle(
                                                                      color: Colors.white,
                                                                      fontWeight: FontWeight.bold,
                                                                      fontSize: 28,
                                                                      shadows: <Shadow>[
                                                                        Shadow(
                                                                          blurRadius: 40,
                                                                          color: Colors.blue,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                              SizedBox(
                                                                height: MediaQuery.of(context).size.height * 0.02,
                                                              ),
                                                              Stack(
                                                                alignment: AlignmentDirectional.center,
                                                                children: <Widget>[
                                                                  Center(
                                                                    child: Container(
                                                                      height: (width + 120) / 4,
                                                                      color: Colors.blueAccent.withOpacity(0.2),
                                                                      width: MediaQuery.of(context).size.width - 24,
                                                                    ),
                                                                  ),
                                                                  PlayerTwoOnlineContainer(
                                                                    builder: (BuildContext context, AppUser? playerTwo) {
                                                                      return PlayerTwoPiecesContainer(
                                                                        builder: (
                                                                          BuildContext context,
                                                                          List<int> playerTwoPieces,
                                                                        ) {
                                                                          return Center(
                                                                            child: Column(
                                                                              children: <Widget>[
                                                                                Text(
                                                                                  user == playerTwo
                                                                                      ? '-- your pieces --'
                                                                                      : '-- opponent pieces --',
                                                                                  style: const TextStyle(
                                                                                    fontSize: 18,
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: List<Widget>.generate(
                                                                                    playerTwoPieces.length,
                                                                                    (int index) => GestureDetector(
                                                                                      onTap: () {
                                                                                        if (!waitPlayer &&
                                                                                            playerTwo == user &&
                                                                                            room['turn'] == 2 &&
                                                                                            gameStatus == 0 &&
                                                                                            playerTwoPieces[index] > 0) {
                                                                                          if (piece.item1 == 2 &&
                                                                                              piece.item2 ==
                                                                                                  playerTwoPieces[index]) {
                                                                                            StoreProvider.of<AppState>(
                                                                                              context,
                                                                                            ).dispatch(
                                                                                              const SetSelectedPiece(
                                                                                                Tuple2<int, int>(-1, -1),
                                                                                              ),
                                                                                            );
                                                                                          } else {
                                                                                            StoreProvider.of<AppState>(
                                                                                              context,
                                                                                            ).dispatch(
                                                                                              SetSelectedPiece(
                                                                                                Tuple2<int, int>(
                                                                                                  2,
                                                                                                  playerTwoPieces[index],
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                        }
                                                                                      },
                                                                                      child: DottedBorder(
                                                                                        borderType: BorderType.Circle,
                                                                                        dashPattern: const <double>[10, 10],
                                                                                        color: piece.item1 == 2 &&
                                                                                                piece.item2 ==
                                                                                                    playerTwoPieces[index]
                                                                                            ? Colors.white
                                                                                            : Colors.transparent,
                                                                                        strokeWidth: 2,
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.all(3),
                                                                                          child: Container(
                                                                                            width: (width - 50) /
                                                                                                6 /
                                                                                                4 *
                                                                                                (playerTwoPieces[index] > 0
                                                                                                    ? playerTwoPieces[index]
                                                                                                    : -playerTwoPieces[
                                                                                                        index]),
                                                                                            height: (width - 50) /
                                                                                                6 /
                                                                                                4 *
                                                                                                (playerTwoPieces[index] > 0
                                                                                                    ? playerTwoPieces[index]
                                                                                                    : -playerTwoPieces[
                                                                                                        index]),
                                                                                            decoration: BoxDecoration(
                                                                                              shape: BoxShape.circle,
                                                                                              boxShadow: const <BoxShadow>[
                                                                                                BoxShadow(
                                                                                                  blurRadius: 10,
                                                                                                  offset: Offset(1, 3),
                                                                                                )
                                                                                              ],
                                                                                              color:
                                                                                                  playerTwoPieces[index] > 0
                                                                                                      ? Colors.deepPurple
                                                                                                      : Colors.redAccent,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
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
                                                                ],
                                                              ),
                                                              TableContainer(
                                                                builder:
                                                                    (BuildContext context, List<Tuple2<int, int>> table) {
                                                                  return PlayerOnePiecesContainer(
                                                                    builder:
                                                                        (BuildContext context, List<int> playerOnePieces) {
                                                                      return PlayerTwoPiecesContainer(
                                                                        builder: (BuildContext context,
                                                                            List<int> playerTwoPieces) {
                                                                          return GameStatusContainer(
                                                                            builder:
                                                                                (BuildContext context, int gameStatus) {
                                                                              return GridView.builder(
                                                                                physics:
                                                                                    const NeverScrollableScrollPhysics(),
                                                                                shrinkWrap: true,
                                                                                gridDelegate:
                                                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                                                  crossAxisCount: 3,
                                                                                ),
                                                                                itemCount: 9,
                                                                                itemBuilder:
                                                                                    (BuildContext context, int index) {
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
                                                                                          opacity: table[index].item1 != -1
                                                                                              ? 1.0
                                                                                              : 0.0,
                                                                                          duration: const Duration(
                                                                                            milliseconds: 300,
                                                                                          ),
                                                                                          child: Center(
                                                                                            child: AnimatedContainer(
                                                                                              width: (width - 50) /
                                                                                                          6 /
                                                                                                          4 *
                                                                                                          (table[index]
                                                                                                              .item2) >
                                                                                                      0
                                                                                                  ? (width - 50) /
                                                                                                      6 /
                                                                                                      4 *
                                                                                                      (table[index].item2)
                                                                                                  : 1,
                                                                                              decoration: BoxDecoration(
                                                                                                shape: BoxShape.circle,
                                                                                                color:
                                                                                                    table[index].item1 == 1
                                                                                                        ? Colors.white
                                                                                                        : Colors.deepPurple,
                                                                                                boxShadow: const <
                                                                                                    BoxShadow>[
                                                                                                  BoxShadow(
                                                                                                    blurRadius: 10,
                                                                                                    offset: Offset(1, 3),
                                                                                                  )
                                                                                                ],
                                                                                              ),
                                                                                              duration: const Duration(
                                                                                                milliseconds: 300,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onTap: () {
                                                                                      _socketMethods.tapGrid(
                                                                                        index,
                                                                                        room['roomId'] as String,
                                                                                        piece.item1,
                                                                                        piece.item2,
                                                                                        table,
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
                                                                  );
                                                                },
                                                              ),
                                                              SizedBox(
                                                                height: MediaQuery.of(context).size.height * 0.02,
                                                              ),
                                                              Stack(
                                                                alignment: AlignmentDirectional.center,
                                                                children: <Widget>[
                                                                  Center(
                                                                    child: Container(
                                                                      height: (width + 120) / 4,
                                                                      color: Colors.blueAccent.withOpacity(0.2),
                                                                      width: MediaQuery.of(context).size.width - 24,
                                                                    ),
                                                                  ),
                                                                  PlayerOneOnlineContainer(
                                                                    builder: (BuildContext context, AppUser? playerOne) {
                                                                      return PlayerOnePiecesContainer(
                                                                        builder: (
                                                                          BuildContext context,
                                                                          List<int> playerOnePieces,
                                                                        ) {
                                                                          return Center(
                                                                            child: Column(
                                                                              children: <Widget>[
                                                                                Text(
                                                                                  user == playerOne
                                                                                      ? '-- your pieces --'
                                                                                      : '-- opponent pieces --',
                                                                                  style: const TextStyle(
                                                                                    fontSize: 18,
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: List<Widget>.generate(
                                                                                    playerOnePieces.length,
                                                                                    (int index) => GestureDetector(
                                                                                      onTap: () {
                                                                                        if (!waitPlayer &&
                                                                                            playerOne == user &&
                                                                                            room['turn'] == 1 &&
                                                                                            gameStatus == 0 &&
                                                                                            playerOnePieces[index] > 0) {
                                                                                          if (piece.item1 == 1 &&
                                                                                              piece.item2 ==
                                                                                                  playerOnePieces[index]) {
                                                                                            StoreProvider.of<AppState>(
                                                                                                    context)
                                                                                                .dispatch(
                                                                                              const SetSelectedPiece(
                                                                                                Tuple2<int, int>(-1, -1),
                                                                                              ),
                                                                                            );
                                                                                          } else {
                                                                                            StoreProvider.of<AppState>(
                                                                                                    context)
                                                                                                .dispatch(
                                                                                              SetSelectedPiece(
                                                                                                Tuple2<int, int>(
                                                                                                  1,
                                                                                                  playerOnePieces[index],
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                        }
                                                                                      },
                                                                                      child: DottedBorder(
                                                                                        borderType: BorderType.Circle,
                                                                                        dashPattern: const <double>[10, 10],
                                                                                        color: piece.item1 == 1 &&
                                                                                                piece.item2 ==
                                                                                                    playerOnePieces[index]
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
                                                                                                    : -playerOnePieces[
                                                                                                        index]),
                                                                                            height: (width - 50) /
                                                                                                6 /
                                                                                                4 *
                                                                                                (playerOnePieces[index] > 0
                                                                                                    ? playerOnePieces[index]
                                                                                                    : -playerOnePieces[
                                                                                                        index]),
                                                                                            decoration: BoxDecoration(
                                                                                              shape: BoxShape.circle,
                                                                                              boxShadow: const <BoxShadow>[
                                                                                                BoxShadow(
                                                                                                  blurRadius: 10,
                                                                                                  offset: Offset(1, 3),
                                                                                                )
                                                                                              ],
                                                                                              color:
                                                                                                  playerOnePieces[index] > 0
                                                                                                      ? Colors.white
                                                                                                      : Colors.redAccent,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
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
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: MediaQuery.of(context).size.height * 0.02,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
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
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/difficulty_colors_container.dart';
import 'package:tic_tac_toe/src/containers/player_turn_container.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class NoDifficultyOfflinePage extends StatefulWidget {
  const NoDifficultyOfflinePage({Key? key}) : super(key: key);

  @override
  State<NoDifficultyOfflinePage> createState() => _NoDifficultyOfflinePageState();
}

class _NoDifficultyOfflinePageState extends State<NoDifficultyOfflinePage> {
  int _localDifficulty = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DifficultyColorsContainer(
        builder: (BuildContext context, List<bool> colors) {
          return SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  UserContainer(
                    builder: (BuildContext context, AppUser? user) {
                      return Text(
                        'computer\nVS\n${user!.username}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 70,
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
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  const Text(
                    'Please select difficulty!',
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: colors[0] ? const Color.fromRGBO(0, 131, 34, 1) : Colors.blue,
                              blurRadius: colors[0] ? 10 : 5,
                              spreadRadius: colors[0] ? 7 : 0,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (!colors[0]) {
                              _localDifficulty = 0;
                            } else {
                              _localDifficulty = -1;
                            }
                            StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.25,
                              50,
                            ),
                          ),
                          child: const Text(
                            'Easy',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: colors[1] ? const Color.fromRGBO(138, 134, 65, 1) : Colors.blue,
                              blurRadius: colors[1] ? 10 : 5,
                              spreadRadius: colors[1] ? 7 : 0,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (!colors[1]) {
                              _localDifficulty = 1;
                            } else {
                              _localDifficulty = -1;
                            }
                            StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.25,
                              50,
                            ),
                          ),
                          child: const Text(
                            'Medium',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: colors[2] ? const Color.fromRGBO(164, 59, 59, 1) : Colors.blue,
                              blurRadius: colors[2] ? 10 : 5,
                              spreadRadius: colors[2] ? 7 : 0,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (!colors[2]) {
                              _localDifficulty = 2;
                            } else {
                              _localDifficulty = -1;
                            }
                            StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.25,
                              50,
                            ),
                          ),
                          child: const Text(
                            'Hard',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Opponent first',
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
                      PlayerTurnContainer(
                        builder: (BuildContext context, int playerTurn) {
                          return Switch(
                            activeColor: Colors.blue,
                            value: playerTurn == 2,
                            onChanged: (final bool? value) {
                              StoreProvider.of<AppState>(context).dispatch(SetPlayerTurn(value! ? 2 : 1));
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
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
                        StoreProvider.of<AppState>(context).dispatch(SetDifficulty(_localDifficulty));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                          MediaQuery.of(context).size.width,
                          50,
                        ),
                      ),
                      child: const Text(
                        'Start',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

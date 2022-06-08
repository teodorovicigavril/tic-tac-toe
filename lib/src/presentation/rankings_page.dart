import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/scores_container.dart';
import 'package:tic_tac_toe/src/containers/users_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class RankingsPage extends StatefulWidget {
  const RankingsPage({Key? key}) : super(key: key);

  @override
  State<RankingsPage> createState() => _RankingsPageState();
}

class _RankingsPageState extends State<RankingsPage> {
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(const ListenForScoresStart());
  }

  @override
  void dispose() {
    _store.dispatch(const ListenForScoresDone());
    super.dispose();
  }

  Widget getTable(int difficulty, Map<String, AppUser> users) {
    return ScoresContainer(
      difficulty: difficulty,
      builder: (BuildContext context, List<Score> scores) {
        scores.sort((Score a, Score b) => b.score.compareTo(a.score));
        if (scores.isEmpty) {
          return Center(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'There are no records yet!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 40,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return DataTable(
          horizontalMargin: 0,
          columnSpacing: 16,
          headingRowColor: MaterialStateColor.resolveWith(
            (Set<MaterialState> states) => Colors.blue.withOpacity(0.75),
          ),
          columns: <DataColumn>[
            DataColumn(
              label: SizedBox(
                width: MediaQuery.of(context).size.width * .1,
                child: const Center(
                  child: Text(
                    'NR',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
            DataColumn(
              label: SizedBox(
                width: MediaQuery.of(context).size.width * .35,
                child: const Center(
                  child: Text(
                    'Player',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
            DataColumn(
              label: SizedBox(
                width: MediaQuery.of(context).size.width * .15,
                child: const Center(
                  child: Text(
                    'Score',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
            DataColumn(
              label: SizedBox(
                width: MediaQuery.of(context).size.width * .2,
                child: const Center(
                  child: Text(
                    'Data',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
          ],
          rows: List<DataRow>.generate(
            min(scores.length, 7),
            (int index) => DataRow(
              color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                if (index.isOdd) {
                  return Colors.blueAccent.withOpacity(0.2);
                }
                return null;
              }),
              cells: <DataCell>[
                DataCell(
                  Center(child: Text('${index + 1}')),
                ),
                DataCell(
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Image.network(users[scores[index].uid]!.photoUrl),
                      ),
                      Text(
                        users[scores[index].uid]!.username.length > 9
                            ? '${users[scores[index].uid]!.username.substring(0, 9)}...'
                            : users[scores[index].uid]!.username,
                      ),
                    ],
                  ),
                ),
                DataCell(
                  Center(
                    child: Text('${scores[index].score}'),
                  ),
                ),
                DataCell(
                  Center(
                    child: Text(
                      '   ${scores[index].createdAt.hour}:${scores[index].createdAt.minute}\n'
                      '${scores[index].createdAt.day}/${scores[index].createdAt.month}/${scores[index].createdAt.year}',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UsersContainer(
        builder: (BuildContext context, Map<String, AppUser> users) {
          return SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Rankings',
                    style: TextStyle(
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
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  const Text(
                    'Best Scores - Difficulty EASY',
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
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  getTable(0, users),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  const Text(
                    'Best Scores - Difficulty MEDIUM',
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
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  getTable(1, users),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  const Text(
                    'Best Scores - Difficulty HARD',
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
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  getTable(2, users),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
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

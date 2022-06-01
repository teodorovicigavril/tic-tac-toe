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
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DataTable(
            horizontalMargin: 0,
            columnSpacing: 16,
            headingRowColor: MaterialStateColor.resolveWith((Set<MaterialState> states) => Colors.lightGreen),
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
                    return Colors.grey.withOpacity(0.3);
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
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Rankings Page')),
      ),
      body: UsersContainer(
        builder: (BuildContext context, Map<String, AppUser> users) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 16),
                    child: const Text(
                      'Best Scores - Difficulty EASY',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                getTable(0, users),
                const SizedBox(
                  height: 32,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 16),
                    child: const Text(
                      'Best Scores - Difficulty MEDIUM',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                getTable(1, users),
                const SizedBox(
                  height: 32,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 16),
                    child: const Text(
                      'Best Scores - Difficulty HARD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                getTable(2, users),
              ],
            ),
          );
        },
      ),
    );
  }
}

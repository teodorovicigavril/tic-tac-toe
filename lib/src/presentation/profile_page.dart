import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/scores_container.dart';
import 'package:tic_tac_toe/src/containers/show_my_table_container.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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

  Widget getTable(int difficulty, AppUser user) {
    return ScoresContainer(
      difficulty: difficulty,
      builder: (BuildContext context, List<Score> scores) {
        scores = scores.where((Score score) => score.uid == user.uid).toList();
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
        return DataTable(
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
            DataColumn(
              label: SizedBox(
                width: MediaQuery.of(context).size.width * .15,
                child: const Center(
                  child: Text(
                    'Remove',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
          ],
          rows: List<DataRow>.generate(
            scores.length,
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
                DataCell(
                  Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(RemoveScoreStart(scores[index].id));
                      },
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
      appBar: AppBar(
        title: const Center(child: Text('Profile Page')),
      ),
      body: ShowMyTableContainer(
        builder: (BuildContext context, List<bool> showMyTable) {
          return UserContainer(
            builder: (BuildContext context, AppUser? user) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 32, top: 32, bottom: 8),
                      child: Text(
                        'Hi there,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Card(
                      elevation: 8,
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        height: 120,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Image.network(user!.photoUrl),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(user.username),
                                    subtitle: Text(user.email),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      TextButton(
                                        child: const Text(
                                          'Update',
                                          style: TextStyle(
                                            color: Colors.orangeAccent,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      TextButton(
                                        child: const Text(
                                          'Delete',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 32, top: 32, bottom: 8),
                      child: Text(
                        'My scores',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(const SetShowMyTableScore(0));
                        },
                        child: Container(
                          width: 180,
                          height: 40,
                          margin: const EdgeInsets.only(top: 16, bottom: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: showMyTable[0] ? Colors.amber : Colors.lightGreen,
                          ),
                          child: Center(child: Text('${showMyTable[0] ? 'Hide' : 'Show'} Scores - EASY')),
                        ),
                      ),
                    ),
                    if (showMyTable[0]) Center(child: getTable(0, user)),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(const SetShowMyTableScore(1));
                        },
                        child: Container(
                          width: 180,
                          height: 40,
                          margin: const EdgeInsets.only(top: 16, bottom: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: showMyTable[1] ? Colors.amber : Colors.lightGreen,
                          ),
                          child: Center(child: Text('${showMyTable[1] ? 'Hide' : 'Show'} Scores - MEDIUM')),
                        ),
                      ),
                    ),
                    if (showMyTable[1]) Center(child: getTable(1, user)),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(const SetShowMyTableScore(2));
                        },
                        child: Container(
                          width: 180,
                          height: 40,
                          margin: const EdgeInsets.only(top: 16, bottom: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: showMyTable[2] ? Colors.amber : Colors.lightGreen,
                          ),
                          child: Center(child: Text('${showMyTable[2] ? 'Hide' : 'Show'} Scores - HARD')),
                        ),
                      ),
                    ),
                    if (showMyTable[2]) Center(child: getTable(2, user)),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

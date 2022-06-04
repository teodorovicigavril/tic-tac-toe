import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/profile_error_message_container.dart';
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
  final TextEditingController _password = TextEditingController();

  void _onResultDelete(AppAction action) {
    if (action is DeleteProfileError) {
      _store.dispatch(const SetProfileErrorMessage('Error while deleting de account!'));
    } else if (action is DeleteProfileSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
    }
  }

  void _onResultVerifyAndDelete(AppAction action) {
    if (action is VerifyPasswordSuccessful) {
      _store
        ..dispatch(const ListenForScoresDone())
        ..dispatch(DeleteProfile(uid: _store.state.user!.uid, onResult: _onResultDelete));
    } else if (action is ErrorAction) {
      final Object error = action.error;

      if (error is FirebaseAuthException) {
        if (error.code == 'wrong-password') {
          _store.dispatch(const SetProfileErrorMessage('Incorrect password!'));
        } else {
          _store.dispatch(SetProfileErrorMessage(error.message!));
        }
      }
    }
  }

  void _onResultVerifyAndUpdate(AppAction action) {
    if (action is VerifyPasswordSuccessful) {
      Navigator.pushNamed(context, '/edit');
    } else if (action is ErrorAction) {
      final Object error = action.error;

      if (error is FirebaseAuthException) {
        if (error.code == 'wrong-password') {
          _store.dispatch(const SetProfileErrorMessage('Incorrect password!'));
        } else {
          _store.dispatch(SetProfileErrorMessage(error.message!));
        }
      }
    }
  }

  void _onNext(bool forUpdate, BuildContext context) {
    if (!Form.of(context)!.validate()) {
      return;
    }
    if (forUpdate) {
      _store.dispatch(
        VerifyPassword(
          password: _password.text,
          onResult: _onResultVerifyAndUpdate,
        ),
      );
    } else {
      _store.dispatch(
        VerifyPassword(
          password: _password.text,
          onResult: _onResultVerifyAndDelete,
        ),
      );
    }
    _password.clear();
  }

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false);
    _store
      ..dispatch(const ListenForScoresStart())
      ..dispatch(const GetProfilePhotos(alreadyLoggedIn: true));
  }

  @override
  void dispose() {
    _store.dispatch(const ListenForScoresDone());
    super.dispose();
  }

  Widget showAlertDialog({required bool forUpdate}) {
    return Form(
      child: AlertDialog(
        title: const Center(child: Text('Confirm Your Password')),
        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ProfileErrorMessageContainer(
                builder: (BuildContext context, String errorMessage) {
                  return Text(
                    errorMessage,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  );
                },
              ),
              const SizedBox(
                width: 16,
              ),
              Builder(
                builder: (BuildContext context) {
                  return TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _password,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'current password',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password!';
                      }
                      return null;
                    },
                    onFieldSubmitted: (String value) {
                      _onNext(forUpdate, context);
                    },
                  );
                },
              ),
            ],
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return TextButton(
                onPressed: () {
                  _onNext(forUpdate, context);
                },
                child: const Text('Submit'),
              );
            },
          ),
          TextButton(
            onPressed: () {
              _password.clear();
              _store.dispatch(const SetProfileErrorMessage(''));
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
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
                        _store.dispatch(RemoveScoreStart(scores[index].id));
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
              if (user == null) {
                return const SizedBox(
                  width: 100,
                );
              }
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
                            Image.network(user.photoUrl),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(user.username),
                                    subtitle: Text(user.email),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        TextButton(
                                          child: const Text(
                                            'Update',
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                            ),
                                          ),
                                          onPressed: () {
                                            showDialog<Widget>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return showAlertDialog(forUpdate: true);
                                              },
                                            );
                                          },
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
                                          onPressed: () {
                                            showDialog<Widget>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return showAlertDialog(forUpdate: false);
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
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
                          _store.dispatch(const SetShowMyTableScore(0));
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
                          _store.dispatch(const SetShowMyTableScore(1));
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
                          _store.dispatch(const SetShowMyTableScore(2));
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
                    const SizedBox(
                      height: 32,
                    ),
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

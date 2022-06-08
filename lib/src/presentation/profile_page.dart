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
      ..dispatch(const GetProfilePhotos(alreadyLoggedIn: true))
      ..dispatch(const SetProfileErrorMessage(''));

    if (_store.state.showMyTableScore[0]) {
      _store.dispatch(const SetShowMyTableScore(0));
    }
    if (_store.state.showMyTableScore[1]) {
      _store.dispatch(const SetShowMyTableScore(1));
    }
    if (_store.state.showMyTableScore[2]) {
      _store.dispatch(const SetShowMyTableScore(2));
    }
  }

  @override
  void dispose() {
    _store.dispatch(const ListenForScoresDone());
    super.dispose();
  }

  Widget showAlertDialog({required bool forUpdate}) {
    return Form(
      child: AlertDialog(
        backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
        title: const Center(
          child: Text(
            'Confirm Your Password',
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
                  );
                },
              ),
              Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: const EdgeInsets.only(top: 16),
                    decoration: const BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _password,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.key,
                          color: Colors.blue,
                        ),
                        fillColor: Color.fromRGBO(16, 13, 34, 1),
                        filled: true,
                        hintText: 'current password',
                        errorStyle: TextStyle(
                          fontSize: 14,
                        ),
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
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          Container(
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  onPressed: () => _onNext(forUpdate, context),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.25,
                      50,
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                );
              },
            ),
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
                _password.clear();
                _store.dispatch(const SetProfileErrorMessage(''));
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
                  return Colors.blueAccent.withOpacity(0.2);
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
                child: Container(
                  margin: const EdgeInsets.only(left: 16, right: 16, top: 48),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'My Account',
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
                        'Hi there,',
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
                        height: MediaQuery.of(context).size.height * 0.01,
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
                        child: Card(
                          elevation: 8,
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
                                        title: Text(
                                          user.username,
                                          style: const TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Text(
                                          user.email,
                                          style: const TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 16),
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
                                                  barrierDismissible: false,
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
                                                  barrierDismissible: false,
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
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      const Text(
                        'My scores',
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
                            _store.dispatch(const SetShowMyTableScore(0));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              MediaQuery.of(context).size.width,
                              50,
                            ),
                          ),
                          child: Text(
                            '${showMyTable[0] ? 'Hide' : 'Show'} Scores - EASY',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      if (showMyTable[0]) Center(child: getTable(0, user)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
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
                            _store.dispatch(const SetShowMyTableScore(1));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              MediaQuery.of(context).size.width,
                              50,
                            ),
                          ),
                          child: Text(
                            '${showMyTable[1] ? 'Hide' : 'Show'} Scores - MEDIUM',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      if (showMyTable[1]) Center(child: getTable(1, user)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
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
                            _store.dispatch(const SetShowMyTableScore(2));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              MediaQuery.of(context).size.width,
                              50,
                            ),
                          ),
                          child: Text(
                            '${showMyTable[2] ? 'Hide' : 'Show'} Scores - HARD',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      if (showMyTable[2]) Center(child: getTable(2, user)),
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
      ),
    );
  }
}

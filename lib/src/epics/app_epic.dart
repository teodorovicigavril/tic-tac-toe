import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/data/auth_api.dart';
import 'package:tic_tac_toe/src/data/game_api.dart';
import 'package:tic_tac_toe/src/game_api/game_logic.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

class AppEpic {
  AppEpic(this._authApi, this._gameApi);

  final AuthApi _authApi;
  final GameApi _gameApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, GetProfilePhotosStart>(_getProfilePhotosStart),
      TypedEpic<AppState, SetTurnTableStart>(_setTurnTableStart),
      TypedEpic<AppState, AddScoreStart>(_addScoreStart),
      TypedEpic<AppState, GetUserStart>(_getUserStart),
      TypedEpic<AppState, RemoveScoreStart>(_removeScoreStart),
      TypedEpic<AppState, VerifyPasswordStart>(_verifyPasswordStart),
      TypedEpic<AppState, DeleteProfileStart>(_deleteProfileStart),
      TypedEpic<AppState, UpdateProfileStart>(_updateProfileStart),
      _listenForScores,
    ]);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.login(email: action.email, password: action.password))
          .map<Login>($Login.successful)
          .onErrorReturnWith($Login.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getCurrentUser())
          .map<GetCurrentUser>($GetCurrentUser.successful)
          .onErrorReturnWith($GetCurrentUser.error);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.create(
              email: action.email,
              password: action.password,
              username: action.username,
              photoUrl: action.photoUrl,
            ),
          )
          .map<CreateUser>($CreateUser.successful)
          .onErrorReturnWith($CreateUser.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.logout())
          .mapTo(const Logout.successful())
          .onErrorReturnWith($Logout.error);
    });
  }

  Stream<AppAction> _getProfilePhotosStart(Stream<GetProfilePhotosStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetProfilePhotosStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getProfilePhotos(alreadyLoggedIn: action.alreadyLoggedIn))
          .map<GetProfilePhotos>($GetProfilePhotos.successful)
          .onErrorReturnWith($GetProfilePhotos.error);
    });
  }

  Stream<AppAction> _listenForScores(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForScoresStart>().flatMap((ListenForScoresStart action) {
      return _gameApi
          .listenForScores()
          .expand((List<Score> scores) {
            return <AppAction>[
              ListenForScores.event(scores),
              ...scores
                  .where((Score score) => store.state.users[score.uid] == null)
                  .map((Score score) => GetUser(score.uid))
                  .toSet()
            ];
          })
          .takeUntil<dynamic>(actions.where((dynamic event) => event is ListenForScoresDone))
          .onErrorReturnWith($ListenForScores.error);
    });
  }

  Stream<AppAction> _deleteProfileStart(Stream<DeleteProfileStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((DeleteProfileStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.deleteProfile(action.uid))
          .mapTo(const DeleteProfile.successful())
          .onErrorReturnWith($DeleteProfile.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getUserStart(Stream<GetUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getUser(action.uid))
          .map<GetUser>($GetUser.successful)
          .onErrorReturnWith($GetUser.error);
    });
  }

  Stream<AppAction> _removeScoreStart(Stream<RemoveScoreStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((RemoveScoreStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _gameApi.removeScore(action.id))
          .map<RemoveScore>($RemoveScore.successful)
          .onErrorReturnWith(RemoveScore.error);
    });
  }

  Stream<AppAction> _addScoreStart(Stream<AddScoreStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((AddScoreStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return _gameApi.addScore(
              uid: store.state.user!.uid,
              difficulty: store.state.selectedDifficulty,
              score: action.score,
            );
          })
          .mapTo(const AddScore.successful())
          .onErrorReturnWith($AddScore.error);
    });
  }

  Stream<AppAction> _verifyPasswordStart(Stream<VerifyPasswordStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((VerifyPasswordStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.verifyPassword(action.password))
          .mapTo(const VerifyPassword.successful())
          .onErrorReturnWith($VerifyPassword.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _updateProfileStart(Stream<UpdateProfileStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateProfileStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.updateProfile(
              email: action.email,
              password: action.password,
              username: action.username,
              photoUrl: action.photoUrl,
            ),
          )
          .map<UpdateProfile>($UpdateProfile.successful)
          .onErrorReturnWith($UpdateProfile.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _setTurnTableStart(Stream<SetTurnTableStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SetTurnTableStart action) async* {
      if (!action.opponentStarts) {
        if ((store.state.table[action.index].item1 == 2 &&
                store.state.table[action.index].item2 < action.piece.item2) ||
            store.state.table[action.index].item1 == -1) {
          yield SetPieceToTable(action.piece, action.index);
          yield DecreaseScore(action.piece.item2 + 6 - store.state.availablePlayerOnePieces.length);

          yield const SetSelectedPiece(Tuple2<int, int>(-1, -1));
          yield SetAvailablePlayerOnePiece(piece: action.piece.item2, remove: true);

          if (evaluate(store.state.table) == -10) {
            yield const SetGameStatus(1);
            yield AddScore.start(store.state.score);

            await showDialog<Widget>(
              context: action.context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return getAlertDialog(
                  'You won!',
                  context,
                  action.difficulty,
                  store.state.score,
                  action.initialPlayer,
                  action.width,
                );
              },
            );
            return;
          }

          for (int i = 0; i < store.state.availablePlayerOnePieces.length; i++) {
            if (!isMovesLeft(store.state.table, store.state.availablePlayerOnePieces[i], 2) &&
                store.state.availablePlayerOnePieces[i] > 0) {
              yield SetAvailablePlayerOnePiece(piece: store.state.availablePlayerOnePieces[i], remove: false);
            }
          }

          for (int i = 0; i < store.state.availablePlayerTwoPieces.length; i++) {
            if (!isMovesLeft(store.state.table, store.state.availablePlayerTwoPieces[i], 1) &&
                store.state.availablePlayerTwoPieces[i] > 0) {
              yield SetAvailablePlayerTwoPiece(piece: store.state.availablePlayerTwoPieces[i], remove: false);
            }
          }

          if (checkTie(store.state.availablePlayerOnePieces, store.state.availablePlayerTwoPieces)) {
            yield const SetGameStatus(3);
            yield const DecreaseScore(10);
            yield AddScore.start(store.state.score);

            await showDialog<Widget>(
              context: action.context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return getAlertDialog(
                  'It s a TIE!',
                  context,
                  action.difficulty,
                  store.state.score,
                  action.initialPlayer,
                  action.width,
                );
              },
            );
            return;
          }

          yield const SetPlayerTurn(2);

          int j = 0;
          while (
              j < store.state.availablePlayerTwoPieces.length && store.state.availablePlayerTwoPieces.reduce(max) > 0) {
            await Future<void>.delayed(Duration(milliseconds: Random().nextInt(300) + 700));

            Tuple2<int, int> move = const Tuple2<int, int>(-1, -1);
            if (action.difficulty == 0) {
              move = findBestMoveEasy(
                List<Tuple2<int, int>>.from(store.state.table),
                List<int>.from(store.state.availablePlayerTwoPieces),
              );
            } else if (action.difficulty == 1) {
              move = findBestMove(
                List<Tuple2<int, int>>.from(store.state.table),
                List<int>.from(store.state.availablePlayerTwoPieces),
              );
            } else {
              move = findBestMoveHard(
                List<Tuple2<int, int>>.from(store.state.table),
                List<int>.from(store.state.availablePlayerTwoPieces),
                List<int>.from(store.state.availablePlayerOnePieces),
              );
            }

            if (move.item1 != -1) {
              yield SetPieceToTable(Tuple2<int, int>(2, move.item2), move.item1);
              yield SetAvailablePlayerTwoPiece(piece: move.item2, remove: true);
              j--;
            }

            for (int i = 0; i < store.state.availablePlayerOnePieces.length; i++) {
              if (!isMovesLeft(store.state.table, store.state.availablePlayerOnePieces[i], 2) &&
                  store.state.availablePlayerOnePieces[i] > 0) {
                yield SetAvailablePlayerOnePiece(piece: store.state.availablePlayerOnePieces[i], remove: false);
              }
            }

            for (int i = 0; i < store.state.availablePlayerTwoPieces.length; i++) {
              if (!isMovesLeft(store.state.table, store.state.availablePlayerTwoPieces[i], 1) &&
                  store.state.availablePlayerTwoPieces[i] > 0) {
                yield SetAvailablePlayerTwoPiece(piece: store.state.availablePlayerTwoPieces[i], remove: false);
              }
            }

            if (evaluate(store.state.table) == 10) {
              yield const SetGameStatus(2);
              yield const DecreaseScore(20);
              yield AddScore.start(store.state.score);

              await showDialog<Widget>(
                context: action.context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return getAlertDialog(
                    'You lose!',
                    context,
                    action.difficulty,
                    store.state.score,
                    action.initialPlayer,
                    action.width,
                  );
                },
              );
              return;
            }

            if (checkTie(store.state.availablePlayerOnePieces, store.state.availablePlayerTwoPieces)) {
              yield const SetGameStatus(3);
              yield const DecreaseScore(10);
              yield AddScore.start(store.state.score);

              await showDialog<Widget>(
                context: action.context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return getAlertDialog(
                    'It s a TIE!',
                    context,
                    action.difficulty,
                    store.state.score,
                    action.initialPlayer,
                    action.width,
                  );
                },
              );
              return;
            }

            if (!(store.state.availablePlayerOnePieces.isNotEmpty &&
                store.state.availablePlayerOnePieces.reduce(max) < 0)) {
              break;
            }
            j++;
          }
          yield const SetPlayerTurn(1);
        }
      } else {
        yield const SetPlayerTurn(2);

        await Future<void>.delayed(Duration(milliseconds: Random().nextInt(300) + 700));

        Tuple2<int, int> move = const Tuple2<int, int>(-1, -1);
        if (action.difficulty == 0) {
          move = findBestMoveEasy(
            List<Tuple2<int, int>>.from(store.state.table),
            List<int>.from(store.state.availablePlayerTwoPieces),
          );
        } else if (action.difficulty == 1) {
          move = findBestMove(
            List<Tuple2<int, int>>.from(store.state.table),
            List<int>.from(store.state.availablePlayerTwoPieces),
          );
        } else {
          move = findBestMoveHard(
            List<Tuple2<int, int>>.from(store.state.table),
            List<int>.from(store.state.availablePlayerTwoPieces),
            List<int>.from(store.state.availablePlayerOnePieces),
          );
        }

        if (move.item1 != -1) {
          yield SetPieceToTable(Tuple2<int, int>(2, move.item2), move.item1);
          yield SetAvailablePlayerTwoPiece(piece: move.item2, remove: true);
        }

        yield const SetPlayerTurn(1);
      }
    });
  }
}

AlertDialog getAlertDialog(
  String title,
  BuildContext context,
  int difficulty,
  int score,
  int playerTurn,
  double width,
) {
  return AlertDialog(
    backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
    title: Center(
      child: Text(
        title,
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
    ),
    content: Text(
      'Your score is $score, this will be automatically added to your scores!',
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        shadows: <Shadow>[
          Shadow(
            blurRadius: 40,
            color: Colors.green,
          ),
        ],
      ),
    ),
    actionsAlignment: MainAxisAlignment.center,
    actions: <Widget>[
      Center(
        child: Container(
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
              minimumSize: Size(width * .3, 50),
            ),
            child: const Text(
              'See Board',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      Center(
        child: Container(
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
              StoreProvider.of<AppState>(context).dispatch(SetInitGame(playerTurn, difficulty));

              if (playerTurn == 2) {
                StoreProvider.of<AppState>(context).dispatch(
                  SetTurnTableStart(
                    index: -1,
                    difficulty: difficulty,
                    piece: const Tuple2<int, int>(-1, -1),
                    opponentStarts: true,
                    context: context,
                    initialPlayer: playerTurn,
                    width: width,
                  ),
                );
              }

              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width * .3, 50),
            ),
            child: const Text(
              'Try again',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      Center(
        child: Container(
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
              Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width * .3, 50),
            ),
            child: const Text(
              'Leave',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

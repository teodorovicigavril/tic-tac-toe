import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/data/auth_api.dart';
import 'package:tic_tac_toe/src/game_api/game_logic.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

class AppEpic {
  AppEpic(this._authApi);

  final AuthApi _authApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, GetProfilePhotosStart>(_getProfilePhotosStart),
      TypedEpic<AppState, SetTurnTableStart>(_setTurnTableStart),
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
          .asyncMap((_) => _authApi.getProfilePhotos())
          .map<GetProfilePhotos>($GetProfilePhotos.successful)
          .onErrorReturnWith($GetProfilePhotos.error);
    });
  }

  // Stream<AppAction> _setPieceToTable(Stream<SetPieceToTable> actions, EpicStore<AppState> store) {
  //   return actions.flatMap((SetPieceToTable action) async* {
  //   final List<Tuple2<int, int>> table = store.state.table;
  //   yield const SetSelectedPiece(Tuple2<int, int>(-1, -1));
  //
  //   yield SetAvailablePlayerOnePiece(piece.item2);
  //
  //   final Tuple2<int, int> move = findBestMove(
  //     List<Tuple2<int, int>>.from(table),
  //     List<int>.from(playerTwoPieces),
  //   );
  //
  //   print(table);
  //   yield SetPieceToTable(Tuple2<int, int>(2, move.item2), move.item1);
  //   yield SetAvailablePlayerTwoPiece(move.item2);
  // });
  // }

  Stream<AppAction> _setTurnTableStart(Stream<SetTurnTableStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SetTurnTableStart action) async* {
      if ((store.state.table[action.index].item1 == 2 && store.state.table[action.index].item2 < action.piece.item2) ||
          store.state.table[action.index].item1 == -1) {
        yield SetPieceToTable(action.piece, action.index);

        yield const SetSelectedPiece(Tuple2<int, int>(-1, -1));
        yield SetAvailablePlayerOnePiece(piece: action.piece.item2, remove: true);

        if (evaluate(store.state.table) == -10) {
          yield const SetGameStatus(1);
          await showDialog<Widget>(
            context: action.context,
            builder: (BuildContext context) {
              return getAlertDialog('You won!', context, action.difficulty);
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
          await showDialog<Widget>(
            context: action.context,
            builder: (BuildContext context) {
              return getAlertDialog('It s a TIE!', context, action.difficulty);
            },
          );
          return;
        }

        yield const SetPlayerTurn(2);
        await Future<void>.delayed(Duration(milliseconds: Random().nextInt(1000) + 700));

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
        }

        if (move.item1 != -1) {
          yield SetPieceToTable(Tuple2<int, int>(2, move.item2), move.item1);
          yield SetAvailablePlayerTwoPiece(piece: move.item2, remove: true);
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
          await showDialog<Widget>(
            context: action.context,
            builder: (BuildContext context) {
              return getAlertDialog('You lose!', context, action.difficulty);
            },
          );
          return;
        }

        if (checkTie(store.state.availablePlayerOnePieces, store.state.availablePlayerTwoPieces)) {
          yield const SetGameStatus(3);
          await showDialog<Widget>(
            context: action.context,
            builder: (BuildContext context) {
              return getAlertDialog('It s a TIE!', context, action.difficulty);
            },
          );
          return;
        }

        yield const SetPlayerTurn(1);
      }
    });
  }
}

AlertDialog getAlertDialog(String title, BuildContext context, int difficulty) {
  return AlertDialog(
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    title: Center(
      child: Text(title),
    ),
    content: const Text(
      'Your score is 15, this will be automatically added to your scores!',
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('See Board'),
      ),
      TextButton(
        onPressed: () {
          StoreProvider.of<AppState>(context).dispatch(SetInitGame(difficulty));
          Navigator.of(context).pop();
        },
        child: const Text('Try again'),
      ),
      TextButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
        },
        child: const Text('Leave'),
      )
    ],
  );
}

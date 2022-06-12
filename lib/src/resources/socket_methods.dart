import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/game_api/game_logic.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/resources/socket_client.dart';
import 'package:tuple/tuple.dart';

class SocketMethods {
  final Socket _socketClient = SocketClient.instance.socket!;

  // EMITS
  void createRoom(AppUser user, int numberOfRounds, String playerOrder) {
    _socketClient.emit('createRoom', <String, dynamic>{
      'user': user,
      'numberOfRounds': numberOfRounds,
      'playerOrder': playerOrder,
    });
  }

  void joinRoom(AppUser user, String roomId) {
    _socketClient.emit('joinRoom', <String, dynamic>{
      'user': user,
      'roomId': roomId,
    });
  }

  void tapGrid(int index, String roomId, int pieceOwner, int pieceSize, List<Tuple2<int, int>> table) {
    if (pieceOwner == 1) {
      if (table[index].item1 == -1 || (table[index].item1 == 2 && table[index].item2 < pieceSize)) {
        _socketClient.emit('tap', <String, dynamic>{
          'index': index,
          'roomId': roomId,
          'pieceOwner': pieceOwner,
          'pieceSize': pieceSize,
        });
      }
    }
    if (pieceOwner == 2) {
      if (table[index].item1 == -1 || (table[index].item1 == 1 && table[index].item2 < pieceSize)) {
        _socketClient.emit('tap', <String, dynamic>{
          'index': index,
          'roomId': roomId,
          'pieceOwner': pieceOwner,
          'pieceSize': pieceSize,
        });
      }
    }
  }

  // LISTENERS
  void createRoomSuccessListener(BuildContext context) {
    _socketClient.on('createRoomSuccess', (dynamic room) {
      StoreProvider.of<AppState>(context, listen: false).dispatch(SetRoom(room as Map<String, dynamic>));
      StoreProvider.of<AppState>(context, listen: false).dispatch(const SetInitGame(1));
      Navigator.pushNamed(context, '/online');
    });
  }

  void stopCreateRoomSuccesListener() {
    _socketClient.off('createRoomSuccess');
  }

  void joinRoomSuccessListener(BuildContext context) {
    _socketClient.on('joinRoomSuccess', (dynamic room) {
      StoreProvider.of<AppState>(context, listen: false).dispatch(SetRoom(room as Map<String, dynamic>));
      StoreProvider.of<AppState>(context, listen: false).dispatch(const SetInitGame(1));
      Navigator.pushNamed(context, '/online');
    });
  }

  void errorOccurredListener(BuildContext context) {
    _socketClient.on('errorOccurred', (dynamic data) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(data as String),
        ),
      );
    });
  }

  void updatePlayersStateListener(BuildContext context) {
    _socketClient.on('updatePlayers', (dynamic players) {
      StoreProvider.of<AppState>(context, listen: false)
          .dispatch(SetPlayerOneOnline(AppUser.fromJson(players[0] as Map<String, dynamic>)));
      StoreProvider.of<AppState>(context, listen: false)
          .dispatch(SetPlayerTwoOnline(AppUser.fromJson(players[1] as Map<String, dynamic>)));
    });
  }

  void updateRoomListener(BuildContext context) {
    _socketClient.on('updateRoom', (dynamic room) {
      StoreProvider.of<AppState>(context, listen: false).dispatch(SetRoom(room as Map<String, dynamic>));
    });
  }

  void tappedListener(BuildContext context) {
    final Store<AppState> _store = StoreProvider.of<AppState>(context, listen: false);
    _socketClient.on('tapped', (dynamic data) {
      final Map<String, dynamic> map = data as Map<String, dynamic>;
      final int pieceOwner = map['pieceOwner'] as int;
      final int pieceSize = map['pieceSize'] as int;
      final int index = map['index'] as int;
      final Map<String, dynamic> room = map['room'] as Map<String, dynamic>;
      _store
        ..dispatch(
          SetPieceToTable(Tuple2<int, int>(pieceOwner, pieceSize), index),
        )
        ..dispatch(SetRoom(room));

      if (pieceOwner == 1) {
        _store.dispatch(
          SetAvailablePlayerOnePiece(piece: pieceSize, remove: true),
        );
      } else {
        StoreProvider.of<AppState>(context, listen: false).dispatch(
          SetAvailablePlayerTwoPiece(piece: pieceSize, remove: true),
        );
      }

      for (int i = 0; i < _store.state.availablePlayerOnePieces.length; i++) {
        if (!isMovesLeft(_store.state.table, _store.state.availablePlayerOnePieces[i], 2) &&
            _store.state.availablePlayerOnePieces[i] > 0) {
          _store.dispatch(SetAvailablePlayerOnePiece(piece: _store.state.availablePlayerOnePieces[i], remove: false));
        }
      }

      for (int i = 0; i < _store.state.availablePlayerTwoPieces.length; i++) {
        if (!isMovesLeft(_store.state.table, _store.state.availablePlayerTwoPieces[i], 1) &&
            _store.state.availablePlayerTwoPieces[i] > 0) {
          _store.dispatch(SetAvailablePlayerTwoPiece(piece: _store.state.availablePlayerTwoPieces[i], remove: false));
        }
      }

      if (evaluate(_store.state.table) == 10) {
        _store
          ..dispatch(const SetGameStatus(1))
          ..dispatch(const SetPlayerOneReady(value: false))
          ..dispatch(const SetPlayerTwoReady(value: false));

        showDialog<Widget>(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('${_store.state.playerTwoOnline!.username} won!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    _socketClient.emit('readyForNextRound', <String, dynamic>{
                      'user': _store.state.user,
                      'roomId': room['roomId'],
                    });

                    Navigator.pop(context);
                    _store.dispatch(const SetInitGame(1));
                  },
                  child: const Text('Next Round'),
                )
              ],
            );
          },
        );
        return;
      } else if (evaluate(_store.state.table) == -10) {
        _store
          ..dispatch(const SetGameStatus(2))
          ..dispatch(const SetPlayerOneReady(value: false))
          ..dispatch(const SetPlayerTwoReady(value: false));

        showDialog<Widget>(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('${_store.state.playerOneOnline!.username} won!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    _socketClient.emit('readyForNextRound', <String, dynamic>{
                      'user': _store.state.user,
                      'roomId': room['roomId'],
                    });

                    Navigator.pop(context);
                    _store.dispatch(const SetInitGame(1));
                  },
                  child: const Text('Next Round'),
                )
              ],
            );
          },
        );
        return;
      }

      if (checkTie(_store.state.availablePlayerOnePieces, _store.state.availablePlayerTwoPieces)) {
        _store
          ..dispatch(const SetGameStatus(3))
          ..dispatch(const SetPlayerOneReady(value: false))
          ..dispatch(const SetPlayerTwoReady(value: false));

        showDialog<Widget>(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Tie!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    _socketClient.emit('readyForNextRound', <String, dynamic>{
                      'user': _store.state.user,
                      'roomId': room['roomId'],
                    });

                    Navigator.pop(context);
                    _store.dispatch(const SetInitGame(1));
                  },
                  child: const Text('Next Round'),
                )
              ],
            );
          },
        );
      }
    });
  }

  void setReadyForUserListener(BuildContext context) {
    _socketClient.on('setReadyForUser', (dynamic data) {
      final AppUser user = AppUser.fromJson(data['user'] as Map<String, dynamic>);
      if (user == StoreProvider.of<AppState>(context, listen: false).state.playerOneOnline) {
        StoreProvider.of<AppState>(context, listen: false).dispatch(const SetPlayerOneReady(value: true));
      } else {
        StoreProvider.of<AppState>(context, listen: false).dispatch(const SetPlayerTwoReady(value: true));
      }
    });
  }

}

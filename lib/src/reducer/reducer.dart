import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

AppState reducer(AppState state, dynamic action) {
  if (kDebugMode) {
    print(action);
  }
  if (action is! AppAction) {
    throw ArgumentError('All actions should implement AppAction');
  }

  final AppState newState = _reducer(state, action);
  return newState;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, UserAction>(_userAction),
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, GetProfilePhotosSuccessful>(_getProfilePhotosSuccessful),
  TypedReducer<AppState, SetProfilePhoto>(_setProfilePhoto),
  TypedReducer<AppState, SetDifficulty>(_setDifficulty),
  TypedReducer<AppState, SetDifficultyColor>(_setDifficultyColor),
  TypedReducer<AppState, SetSelectedPiece>(_setSelectedPiece),
  TypedReducer<AppState, SetPieceToTable>(_setPieceToTable),
  TypedReducer<AppState, SetAvailablePlayerOnePiece>(_setAvailablePlayerOnePiece),
  TypedReducer<AppState, SetAvailablePlayerTwoPiece>(_setAvailablePlayerTwoPiece),
  TypedReducer<AppState, SetInitGame>(_setInitGame),
  TypedReducer<AppState, SetGameStatus>(_setGameStatus),
  TypedReducer<AppState, SetPlayerTurn>(_setPlayerTurn),
  TypedReducer<AppState, DecreaseScore>(_decreaseScore),
  TypedReducer<AppState, ActionStart>(_actionStart),
  TypedReducer<AppState, ActionDone>(_actionDone),
  TypedReducer<AppState, OnScoresEvent>(_onScoresEvent),
  TypedReducer<AppState, GetUserSuccessful>(_getUserSuccessful),
  TypedReducer<AppState, SetShowMyTableScore>(_setShowMyTableScore),
  TypedReducer<AppState, RemoveScoreSuccessful>(_removeScoreSuccessful),
  TypedReducer<AppState, DeleteProfileSuccessful>(_deleteProfileSuccessful),
  TypedReducer<AppState, SetProfileErrorMessage>(_setProfileErrorMessage),
  TypedReducer<AppState, UpdateProfileSuccessful>(_updateProfileSuccessful),
]);

AppState _userAction(AppState state, UserAction action) {
  return state.copyWith(user: action.user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _getProfilePhotosSuccessful(AppState state, GetProfilePhotosSuccessful action) {
  return state.copyWith(photoUrls: <String>[...action.photoUrls]);
}

AppState _setProfilePhoto(AppState state, SetProfilePhoto action) {
  return state.copyWith(selectedProfilePhoto: action.selectedProfilePhoto);
}

AppState _setDifficulty(AppState state, SetDifficulty action) {
  return state.copyWith(selectedDifficulty: action.difficulty);
}

AppState _setDifficultyColor(AppState state, SetDifficultyColor action) {
  final List<Color> difficultyColors = List<Color>.filled(state.difficultyColors.length, Colors.grey);
  if (action.position >= 0 && action.position <= difficultyColors.length) {
    difficultyColors[action.position] = Colors.lightGreen;
  }
  return state.copyWith(difficultyColors: difficultyColors);
}

AppState _setSelectedPiece(AppState state, SetSelectedPiece action) {
  return state.copyWith(selectedPiece: action.piece);
}

AppState _setPieceToTable(AppState state, SetPieceToTable action) {
  final AppState newState = state.copyWith(
    table: state.table.asMap().entries.map((MapEntry<int, Tuple2<int, int>> e) {
      if (e.key == action.position) {
        return action.piece;
      } else {
        return e.value;
      }
    }).toList(),
  );
  return newState;
}

AppState _setAvailablePlayerOnePiece(AppState state, SetAvailablePlayerOnePiece action) {
  if (action.remove) {
    return state.copyWith(availablePlayerOnePieces: <int>[...state.availablePlayerOnePieces]..remove(action.piece));
  } else {
    return state.copyWith(
      availablePlayerOnePieces: state.availablePlayerOnePieces.map((int piece) {
        if (piece == action.piece) {
          return -piece;
        }
        return piece;
      }).toList(),
    );
  }
}

AppState _setAvailablePlayerTwoPiece(AppState state, SetAvailablePlayerTwoPiece action) {
  if (action.remove) {
    return state.copyWith(availablePlayerTwoPieces: <int>[...state.availablePlayerTwoPieces]..remove(action.piece));
  } else {
    return state.copyWith(
      availablePlayerTwoPieces: state.availablePlayerTwoPieces.map((int piece) {
        if (piece == action.piece) {
          return -piece;
        }
        return piece;
      }).toList(),
    );
  }
}

AppState _setInitGame(AppState state, SetInitGame action) {
  return state.copyWith(
    availablePlayerOnePieces: <int>[1, 2, 3, 4, 5, 6],
    availablePlayerTwoPieces: <int>[1, 2, 3, 4, 5, 6],
    selectedDifficulty: action.difficulty,
    gameStatus: 0,
    score: 109,
    difficultyColors: <Color>[Colors.grey, Colors.grey, Colors.grey],
    selectedPiece: const Tuple2<int, int>(-1, -1),
    table: <Tuple2<int, int>>[
      const Tuple2<int, int>(-1, -1),
      const Tuple2<int, int>(-1, -1),
      const Tuple2<int, int>(-1, -1),
      const Tuple2<int, int>(-1, -1),
      const Tuple2<int, int>(-1, -1),
      const Tuple2<int, int>(-1, -1),
      const Tuple2<int, int>(-1, -1),
      const Tuple2<int, int>(-1, -1),
      const Tuple2<int, int>(-1, -1),
    ],
  );
}

AppState _setGameStatus(AppState state, SetGameStatus action) {
  return state.copyWith(gameStatus: action.status);
}

AppState _setPlayerTurn(AppState state, SetPlayerTurn action) {
  return state.copyWith(playerTurn: action.player);
}

AppState _decreaseScore(AppState state, DecreaseScore action) {
  return state.copyWith(score: state.score - action.points);
}

AppState _actionStart(AppState state, ActionStart action) {
  return state.copyWith(pending: <String>{...state.pending, action.pendingId});
}

AppState _actionDone(AppState state, ActionDone action) {
  return state.copyWith(pending: <String>{...state.pending}..remove(action.pendingId));
}

AppState _onScoresEvent(AppState state, OnScoresEvent action) {
  return state.copyWith(scores: <Score>{...state.scores, ...action.scores}.toList());
}

AppState _getUserSuccessful(AppState state, GetUserSuccessful action) {
  return state.copyWith(
    users: <String, AppUser>{
      ...state.users,
      action.user.uid: action.user,
    },
  );
}

AppState _setShowMyTableScore(AppState state, SetShowMyTableScore action) {
  return state.copyWith(
    showMyTableScore: state.showMyTableScore.asMap().entries.map((MapEntry<int, bool> e) {
      if (e.key == action.difficulty) {
        return !e.value;
      }
      return e.value;
    }).toList(),
  );
}

AppState _removeScoreSuccessful(AppState state, RemoveScoreSuccessful action) {
  return state.copyWith(scores: <Score>[...state.scores]..remove(action.score));
}

AppState _deleteProfileSuccessful(AppState state, DeleteProfileSuccessful action) {
  return state.copyWith(user: null);
}

AppState _setProfileErrorMessage(AppState state, SetProfileErrorMessage action) {
  return state.copyWith(profileErrorMessage: action.message);
}

AppState _updateProfileSuccessful(AppState state, UpdateProfileSuccessful action) {
  return state.copyWith(user: action.user, users: <String, AppUser>{...state.users, action.user.uid: action.user});
}

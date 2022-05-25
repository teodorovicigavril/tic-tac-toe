import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

AppState reducer(AppState state, dynamic action) {
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
  return state.copyWith(
    table: state.table.asMap().entries.map((MapEntry<int, Tuple2<int, int>> e) {
      if (e.key == action.position) {
        return action.piece;
      } else {
        return e.value;
      }
    }).toList(),
  );
}

AppState _setAvailablePlayerOnePiece(AppState state, SetAvailablePlayerOnePiece action) {
  return state.copyWith(availablePlayerOnePieces: <int>[...state.availablePlayerOnePieces]..remove(action.piece));
}

AppState _setAvailablePlayerTwoPiece(AppState state, SetAvailablePlayerTwoPiece action) {
  return state.copyWith(availablePlayerTwoPieces: <int>[...state.availablePlayerTwoPieces]..remove(action.piece));
}

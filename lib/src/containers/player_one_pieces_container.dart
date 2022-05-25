import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class PlayerOnePiecesContainer extends StatelessWidget {
  const PlayerOnePiecesContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<int>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<int>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.availablePlayerOnePieces,
    );
  }
}

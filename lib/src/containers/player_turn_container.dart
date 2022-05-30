import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class PlayerTurnContainer extends StatelessWidget {
  const PlayerTurnContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<int> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.playerTurn,
    );
  }
}

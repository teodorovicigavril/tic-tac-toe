import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

class PieceContainer extends StatelessWidget {
  const PieceContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Tuple2<int, int>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Tuple2<int, int>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.selectedPiece,
    );
  }
}

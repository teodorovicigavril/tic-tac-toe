import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

class TableContainer extends StatelessWidget {
  const TableContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Tuple2<int, int>>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Tuple2<int, int>>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.table,
    );
  }
}

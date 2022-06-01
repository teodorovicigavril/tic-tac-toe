import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class ShowMyTableContainer extends StatelessWidget {
  const ShowMyTableContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<bool>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<bool>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.showMyTableScore,
    );
  }
}

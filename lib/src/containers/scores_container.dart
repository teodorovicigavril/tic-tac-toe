import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class ScoresContainer extends StatelessWidget {
  const ScoresContainer({Key? key, required this.builder, required this.difficulty}) : super(key: key);

  final ViewModelBuilder<List<Score>> builder;
  final int difficulty;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Score>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.scores
          .where((Score score) => score.difficulty == difficulty)
          .where((Score score) => store.state.users[score.uid] != null)
          .toList(),
    );
  }
}

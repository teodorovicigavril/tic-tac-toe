import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/difficulty_colors_container.dart';
import 'package:tic_tac_toe/src/containers/game_status_container.dart';
import 'package:tic_tac_toe/src/containers/piece_container.dart';
import 'package:tic_tac_toe/src/containers/player_one_pieces_container.dart';
import 'package:tic_tac_toe/src/containers/player_two_pieces_container.dart';
import 'package:tic_tac_toe/src/containers/selected_difficulty_container.dart';
import 'package:tic_tac_toe/src/containers/table_container.dart';
import 'package:tic_tac_toe/src/game_api/game_logic.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/presentation/difficulty_offline_page.dart';
import 'package:tic_tac_toe/src/presentation/no_difficulty_offline_page.dart';
import 'package:tuple/tuple.dart';

class OfflinePage extends StatefulWidget {
  const OfflinePage({Key? key}) : super(key: key);

  @override
  State<OfflinePage> createState() => _OfflinePageState();
}

class _OfflinePageState extends State<OfflinePage> {
  int _localDifficulty = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playing Against Computer'),
      ),
      body: SelectedDifficultyContainer(
        builder: (BuildContext context, int difficulty) {
          if (difficulty == -1) {
            return const NoDifficultyOfflinePage();
          } else {
            return const DifficultyOfflinePage();
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/containers/selected_difficulty_container.dart';
import 'package:tic_tac_toe/src/presentation/difficulty_offline_page.dart';
import 'package:tic_tac_toe/src/presentation/no_difficulty_offline_page.dart';

class OfflinePage extends StatefulWidget {
  const OfflinePage({Key? key}) : super(key: key);

  @override
  State<OfflinePage> createState() => _OfflinePageState();
}

class _OfflinePageState extends State<OfflinePage> {
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

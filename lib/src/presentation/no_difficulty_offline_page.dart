import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/difficulty_colors_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class NoDifficultyOfflinePage extends StatefulWidget {
  const NoDifficultyOfflinePage({Key? key}) : super(key: key);

  @override
  State<NoDifficultyOfflinePage> createState() => _NoDifficultyOfflinePageState();
}

class _NoDifficultyOfflinePageState extends State<NoDifficultyOfflinePage> {
  int _localDifficulty = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DifficultyColorsContainer(
        builder: (BuildContext context, List<Color> colors) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: <Widget>[
                const Text('Please select difficulty!'),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        _localDifficulty = 0;
                        StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: colors[0],
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                        ),
                        height: 40,
                        width: 100,
                        child: const Center(
                          child: Text(
                            'Easy',
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _localDifficulty = 1;
                        StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: colors[1],
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                        ),
                        height: 40,
                        width: 100,
                        child: const Center(
                          child: Text(
                            'Medium',
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _localDifficulty = 2;
                        StoreProvider.of<AppState>(context).dispatch(SetDifficultyColor(_localDifficulty));
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: colors[2],
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                        ),
                        height: 40,
                        width: 100,
                        child: const Center(
                          child: Text(
                            'Hard',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(SetDifficulty(_localDifficulty));
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

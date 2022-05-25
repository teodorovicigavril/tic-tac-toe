import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Tic Tac Toe')),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(const SetDifficulty(-1));
                Navigator.pushNamed(context, '/offline');
              },
              child: const Text('Play Offline'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Play Online'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Rankings'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('About'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

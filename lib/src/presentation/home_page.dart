import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
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
        margin: const EdgeInsets.only(left: 108, right: 108),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  StoreProvider.of<AppState>(context, listen: false).dispatch(const SetInitGame());
                  Navigator.pushNamed(context, '/offline');
                },
                child: Container(
                  width: 180,
                  height: 40,
                  margin: const EdgeInsets.only(top: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightGreen,
                  ),
                  child: const Center(child: Text('Play Offline')),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 180,
                  height: 40,
                  margin: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightGreen,
                  ),
                  child: const Center(child: Text('Play Online')),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/rankings');
                },
                child: Container(
                  width: 180,
                  height: 40,
                  margin: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightGreen,
                  ),
                  child: const Center(child: Text('Rankings')),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profilePage');
                },
                child: Container(
                  width: 180,
                  height: 40,
                  margin: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightGreen,
                  ),
                  child: const Center(child: Text('Profile')),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 180,
                  height: 40,
                  margin: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightGreen,
                  ),
                  child: const Center(child: Text('About')),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 180,
                  height: 40,
                  margin: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightGreen,
                  ),
                  child: const Center(child: Text('Settings')),
                ),
              ),
              GestureDetector(
                onTap: () {
                  StoreProvider.of<AppState>(context).dispatch(const Logout());
                },
                child: Container(
                  width: 180,
                  height: 40,
                  margin: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.yellow,
                  ),
                  child: const Center(child: Text('Logout')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

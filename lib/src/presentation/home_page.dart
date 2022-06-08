import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/responsive/responsive.dart';

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

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, '/create');
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, '/join');
  }

  void offline(BuildContext context) {
    StoreProvider.of<AppState>(context, listen: false).dispatch(const SetInitGame());
    Navigator.pushNamed(context, '/offline');
  }

  void rankings(BuildContext context) {
    Navigator.pushNamed(context, '/rankings');
  }

  void profile(BuildContext context) {
    Navigator.pushNamed(context, '/profile');
  }

  void logout(BuildContext context) {
    StoreProvider.of<AppState>(context).dispatch(const Logout());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Tic Tac Toe',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    shadows: <Shadow>[
                      Shadow(
                        blurRadius: 40,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => createRoom(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.8,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Create Room',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => joinRoom(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.8,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Join Room',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => offline(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Play Offline',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => rankings(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Rankings',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => profile(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.8,
                        50,
                      ),
                    ),
                    child: const Text(
                      'About',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.8,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => logout(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

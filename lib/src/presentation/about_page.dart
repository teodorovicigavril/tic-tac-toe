import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('About Page')),
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: UserContainer(
        builder: (BuildContext context, AppUser? user) {
          return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Image.network(
                          'https://www.cheshirescouts.org.uk/wp-content/uploads/blank-picture.jpg',
                          height: 40,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        user!.username,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        user.email,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home Page'),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('Profile Page'),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/profilePage', ModalRoute.withName('/'));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.more),
                  title: const Text('About Page'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Log Out'),
                  onTap: () {
                    StoreProvider.of<AppState>(context).dispatch(const Logout());
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:random_string/random_string.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/data/auth_api.dart';
import 'package:tic_tac_toe/src/data/game_api.dart';
import 'package:tic_tac_toe/src/epics/app_epic.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/presentation/about_page.dart';
import 'package:tic_tac_toe/src/presentation/create_room_page.dart';
import 'package:tic_tac_toe/src/presentation/edit_profile.dart';
import 'package:tic_tac_toe/src/presentation/home.dart';
import 'package:tic_tac_toe/src/presentation/join_room_page.dart';
import 'package:tic_tac_toe/src/presentation/login_page.dart';
import 'package:tic_tac_toe/src/presentation/offline_page.dart';
import 'package:tic_tac_toe/src/presentation/online_game_page.dart';
import 'package:tic_tac_toe/src/presentation/profile_page.dart';
import 'package:tic_tac_toe/src/presentation/rankings_page.dart';
import 'package:tic_tac_toe/src/presentation/sign_up_page.dart';
import 'package:tic_tac_toe/src/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (Platform.isAndroid || Platform.isIOS) {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
      }
    }
  } catch (_) {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyDKA8IYOTARn7uJDXSvFefG4wQOoxfcMmA',
          authDomain: 'tic-tac-toe-f7264.firebaseapp.com',
          projectId: 'tic-tac-toe-f7264',
          storageBucket: 'tic-tac-toe-f7264.appspot.com',
          messagingSenderId: '250199080465',
          appId: '1:250199080465:web:03858d18525e5a03393bb0',
          measurementId: 'G-N0MGTCLGS6',
        ),
      );
    }
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  final AuthApi authApi = AuthApi(auth, firestore, storage, googleSignIn);
  final GameApi gameApi = GameApi(firestore);
  final AppEpic epic = AppEpic(authApi, gameApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.getEpics()),
    ],
  )..dispatch(const GetCurrentUser());

  runApp(TicTacToeApp(store: store));
}

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          errorColor: const Color.fromRGBO(175, 0, 0, 1),
          scaffoldBackgroundColor: const Color.fromRGBO(16, 13, 34, 1),
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
          '/login': (BuildContext context) => const LoginPage(),
          '/signUp': (BuildContext context) => const SignUpPage(),
          '/about': (BuildContext context) => const AboutPage(),
          '/profile': (BuildContext context) => const ProfilePage(),
          '/offline': (BuildContext context) => const OfflinePage(),
          '/rankings': (BuildContext context) => const RankingsPage(),
          '/edit': (BuildContext context) => const EditProfilePage(),
          '/create': (BuildContext context) => const CreateRoomPage(),
          '/join': (BuildContext context) => const JoinRoomPage(),
          '/online': (BuildContext context) => const OnlineGamePage(),
        },
      ),
    );
  }
}

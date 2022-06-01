import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/data/auth_api.dart';
import 'package:tic_tac_toe/src/data/game_api.dart';
import 'package:tic_tac_toe/src/epics/app_epic.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/presentation/about_page.dart';
import 'package:tic_tac_toe/src/presentation/home.dart';
import 'package:tic_tac_toe/src/presentation/login_page.dart';
import 'package:tic_tac_toe/src/presentation/offline_page.dart';
import 'package:tic_tac_toe/src/presentation/profile_page.dart';
import 'package:tic_tac_toe/src/presentation/rankings_page.dart';
import 'package:tic_tac_toe/src/presentation/sign_up_page.dart';
import 'package:tic_tac_toe/src/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  final FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: app);
  final FirebaseStorage storage = FirebaseStorage.instanceFor(app: app);

  final AuthApi authApi = AuthApi(auth, firestore, storage);
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
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
          '/login': (BuildContext context) => const LoginPage(),
          '/signUp': (BuildContext context) => const SignUpPage(),
          '/aboutPage': (BuildContext context) => const AboutPage(),
          '/profilePage': (BuildContext context) => const ProfilePage(),
          '/offline': (BuildContext context) => const OfflinePage(),
          '/rankings': (BuildContext context) => const RankingsPage(),
        },
      ),
    );
  }
}

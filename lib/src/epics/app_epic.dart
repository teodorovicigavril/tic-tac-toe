import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/data/auth_api.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class AppEpic {
  AppEpic(this._authApi);

  final AuthApi _authApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, GetProfilePhotosStart>(_getProfilePhotosStart),
    ]);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.login(email: action.email, password: action.password))
          .map<Login>($Login.successful)
          .onErrorReturnWith($Login.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action){
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getCurrentUser())
          .map<GetCurrentUser>($GetCurrentUser.successful)
          .onErrorReturnWith($GetCurrentUser.error);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.create(email: action.email, password: action.password, username: action.username, photoUrl: action.photoUrl,))
          .map<CreateUser>($CreateUser.successful)
          .onErrorReturnWith($CreateUser.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.logout())
          .mapTo(const Logout.successful())
          .onErrorReturnWith($Logout.error);
    });
  }


  Stream<AppAction> _getProfilePhotosStart(Stream<GetProfilePhotosStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetProfilePhotosStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getProfilePhotos())
          .map<GetProfilePhotos>($GetProfilePhotos.successful)
          .onErrorReturnWith($GetProfilePhotos.error);
    });
  }

}

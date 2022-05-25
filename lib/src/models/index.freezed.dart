// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  AppUser$ call(
      {required String uid,
      required String email,
      required String username,
      required String photoUrl}) {
    return AppUser$(
      uid: uid,
      email: email,
      username: username,
      photoUrl: photoUrl,
    );
  }

  AppUser fromJson(Map<String, Object?> json) {
    return AppUser.fromJson(json);
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call({String uid, String email, String username, String photoUrl});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory $AppUser$CopyWith(AppUser$ value, $Res Function(AppUser$) then) =
      _$AppUser$CopyWithImpl<$Res>;
  @override
  $Res call({String uid, String email, String username, String photoUrl});
}

/// @nodoc
class _$AppUser$CopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements $AppUser$CopyWith<$Res> {
  _$AppUser$CopyWithImpl(AppUser$ _value, $Res Function(AppUser$) _then)
      : super(_value, (v) => _then(v as AppUser$));

  @override
  AppUser$ get _value => super._value as AppUser$;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(AppUser$(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$(
      {required this.uid,
      required this.email,
      required this.username,
      required this.photoUrl});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) =>
      _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, username: $username, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUser$ &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  $AppUser$CopyWith<AppUser$> get copyWith =>
      _$AppUser$CopyWithImpl<AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(this);
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required String uid,
      required String email,
      required String username,
      required String photoUrl}) = _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get username;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  $AppUser$CopyWith<AppUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call(
      {int selectedDifficulty = -1,
      AppUser? user,
      List<String> photoUrls = const <String>[],
      int selectedProfilePhoto = 0,
      List<Color> difficultyColors = const <Color>[
        Colors.grey,
        Colors.grey,
        Colors.grey
      ],
      List<Tuple2<int, int>> table = const <Tuple2<int, int>>[
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1)
      ],
      List<int> availablePlayerOnePieces = const <int>[1, 2, 3, 4, 5, 6],
      List<int> availablePlayerTwoPieces = const <int>[1, 2, 3, 4, 5, 6],
      Tuple2<int, int> selectedPiece = const Tuple2<int, int>(-1, -1)}) {
    return AppState$(
      selectedDifficulty: selectedDifficulty,
      user: user,
      photoUrls: photoUrls,
      selectedProfilePhoto: selectedProfilePhoto,
      difficultyColors: difficultyColors,
      table: table,
      availablePlayerOnePieces: availablePlayerOnePieces,
      availablePlayerTwoPieces: availablePlayerTwoPieces,
      selectedPiece: selectedPiece,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  int get selectedDifficulty => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;
  List<String> get photoUrls => throw _privateConstructorUsedError;
  int get selectedProfilePhoto => throw _privateConstructorUsedError;
  List<Color> get difficultyColors => throw _privateConstructorUsedError;
  List<Tuple2<int, int>> get table => throw _privateConstructorUsedError;
  List<int> get availablePlayerOnePieces => throw _privateConstructorUsedError;
  List<int> get availablePlayerTwoPieces => throw _privateConstructorUsedError;
  Tuple2<int, int> get selectedPiece => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {int selectedDifficulty,
      AppUser? user,
      List<String> photoUrls,
      int selectedProfilePhoto,
      List<Color> difficultyColors,
      List<Tuple2<int, int>> table,
      List<int> availablePlayerOnePieces,
      List<int> availablePlayerTwoPieces,
      Tuple2<int, int> selectedPiece});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? selectedDifficulty = freezed,
    Object? user = freezed,
    Object? photoUrls = freezed,
    Object? selectedProfilePhoto = freezed,
    Object? difficultyColors = freezed,
    Object? table = freezed,
    Object? availablePlayerOnePieces = freezed,
    Object? availablePlayerTwoPieces = freezed,
    Object? selectedPiece = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDifficulty: selectedDifficulty == freezed
          ? _value.selectedDifficulty
          : selectedDifficulty // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      photoUrls: photoUrls == freezed
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedProfilePhoto: selectedProfilePhoto == freezed
          ? _value.selectedProfilePhoto
          : selectedProfilePhoto // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyColors: difficultyColors == freezed
          ? _value.difficultyColors
          : difficultyColors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<int, int>>,
      availablePlayerOnePieces: availablePlayerOnePieces == freezed
          ? _value.availablePlayerOnePieces
          : availablePlayerOnePieces // ignore: cast_nullable_to_non_nullable
              as List<int>,
      availablePlayerTwoPieces: availablePlayerTwoPieces == freezed
          ? _value.availablePlayerTwoPieces
          : availablePlayerTwoPieces // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedPiece: selectedPiece == freezed
          ? _value.selectedPiece
          : selectedPiece // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
    ));
  }

  @override
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) =
      _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedDifficulty,
      AppUser? user,
      List<String> photoUrls,
      int selectedProfilePhoto,
      List<Color> difficultyColors,
      List<Tuple2<int, int>> table,
      List<int> availablePlayerOnePieces,
      List<int> availablePlayerTwoPieces,
      Tuple2<int, int> selectedPiece});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? selectedDifficulty = freezed,
    Object? user = freezed,
    Object? photoUrls = freezed,
    Object? selectedProfilePhoto = freezed,
    Object? difficultyColors = freezed,
    Object? table = freezed,
    Object? availablePlayerOnePieces = freezed,
    Object? availablePlayerTwoPieces = freezed,
    Object? selectedPiece = freezed,
  }) {
    return _then(AppState$(
      selectedDifficulty: selectedDifficulty == freezed
          ? _value.selectedDifficulty
          : selectedDifficulty // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      photoUrls: photoUrls == freezed
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedProfilePhoto: selectedProfilePhoto == freezed
          ? _value.selectedProfilePhoto
          : selectedProfilePhoto // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyColors: difficultyColors == freezed
          ? _value.difficultyColors
          : difficultyColors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<int, int>>,
      availablePlayerOnePieces: availablePlayerOnePieces == freezed
          ? _value.availablePlayerOnePieces
          : availablePlayerOnePieces // ignore: cast_nullable_to_non_nullable
              as List<int>,
      availablePlayerTwoPieces: availablePlayerTwoPieces == freezed
          ? _value.availablePlayerTwoPieces
          : availablePlayerTwoPieces // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedPiece: selectedPiece == freezed
          ? _value.selectedPiece
          : selectedPiece // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.selectedDifficulty = -1,
      this.user,
      this.photoUrls = const <String>[],
      this.selectedProfilePhoto = 0,
      this.difficultyColors = const <Color>[
        Colors.grey,
        Colors.grey,
        Colors.grey
      ],
      this.table = const <Tuple2<int, int>>[
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1),
        Tuple2<int, int>(-1, -1)
      ],
      this.availablePlayerOnePieces = const <int>[1, 2, 3, 4, 5, 6],
      this.availablePlayerTwoPieces = const <int>[1, 2, 3, 4, 5, 6],
      this.selectedPiece = const Tuple2<int, int>(-1, -1)});

  @JsonKey()
  @override
  final int selectedDifficulty;
  @override
  final AppUser? user;
  @JsonKey()
  @override
  final List<String> photoUrls;
  @JsonKey()
  @override
  final int selectedProfilePhoto;
  @JsonKey()
  @override
  final List<Color> difficultyColors;
  @JsonKey()
  @override
  final List<Tuple2<int, int>> table;
  @JsonKey()
  @override
  final List<int> availablePlayerOnePieces;
  @JsonKey()
  @override
  final List<int> availablePlayerTwoPieces;
  @JsonKey()
  @override
  final Tuple2<int, int> selectedPiece;

  @override
  String toString() {
    return 'AppState(selectedDifficulty: $selectedDifficulty, user: $user, photoUrls: $photoUrls, selectedProfilePhoto: $selectedProfilePhoto, difficultyColors: $difficultyColors, table: $table, availablePlayerOnePieces: $availablePlayerOnePieces, availablePlayerTwoPieces: $availablePlayerTwoPieces, selectedPiece: $selectedPiece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality()
                .equals(other.selectedDifficulty, selectedDifficulty) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.photoUrls, photoUrls) &&
            const DeepCollectionEquality()
                .equals(other.selectedProfilePhoto, selectedProfilePhoto) &&
            const DeepCollectionEquality()
                .equals(other.difficultyColors, difficultyColors) &&
            const DeepCollectionEquality().equals(other.table, table) &&
            const DeepCollectionEquality().equals(
                other.availablePlayerOnePieces, availablePlayerOnePieces) &&
            const DeepCollectionEquality().equals(
                other.availablePlayerTwoPieces, availablePlayerTwoPieces) &&
            const DeepCollectionEquality()
                .equals(other.selectedPiece, selectedPiece));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDifficulty),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(photoUrls),
      const DeepCollectionEquality().hash(selectedProfilePhoto),
      const DeepCollectionEquality().hash(difficultyColors),
      const DeepCollectionEquality().hash(table),
      const DeepCollectionEquality().hash(availablePlayerOnePieces),
      const DeepCollectionEquality().hash(availablePlayerTwoPieces),
      const DeepCollectionEquality().hash(selectedPiece));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith =>
      _$AppState$CopyWithImpl<AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {int selectedDifficulty,
      AppUser? user,
      List<String> photoUrls,
      int selectedProfilePhoto,
      List<Color> difficultyColors,
      List<Tuple2<int, int>> table,
      List<int> availablePlayerOnePieces,
      List<int> availablePlayerTwoPieces,
      Tuple2<int, int> selectedPiece}) = _$AppState$;

  @override
  int get selectedDifficulty;
  @override
  AppUser? get user;
  @override
  List<String> get photoUrls;
  @override
  int get selectedProfilePhoto;
  @override
  List<Color> get difficultyColors;
  @override
  List<Tuple2<int, int>> get table;
  @override
  List<int> get availablePlayerOnePieces;
  @override
  List<int> get availablePlayerTwoPieces;
  @override
  Tuple2<int, int> get selectedPiece;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}

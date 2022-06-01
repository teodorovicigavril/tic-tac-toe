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

/// @nodoc
class _$GetCurrentUserTearOff {
  const _$GetCurrentUserTearOff();

  GetCurrentUserStart call() {
    return const GetCurrentUserStart();
  }

  GetCurrentUserSuccessful successful(AppUser? user) {
    return GetCurrentUserSuccessful(
      user,
    );
  }

  GetCurrentUserError error(Object error, StackTrace stackTrace) {
    return GetCurrentUserError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetCurrentUser = _$GetCurrentUserTearOff();

/// @nodoc
mixin _$GetCurrentUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(
          GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(this._value, this._then);

  final GetCurrentUser _value;
  // ignore: unused_field
  final $Res Function(GetCurrentUser) _then;
}

/// @nodoc
abstract class $GetCurrentUserStartCopyWith<$Res> {
  factory $GetCurrentUserStartCopyWith(
          GetCurrentUserStart value, $Res Function(GetCurrentUserStart) then) =
      _$GetCurrentUserStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserStartCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserStartCopyWith<$Res> {
  _$GetCurrentUserStartCopyWithImpl(
      GetCurrentUserStart _value, $Res Function(GetCurrentUserStart) _then)
      : super(_value, (v) => _then(v as GetCurrentUserStart));

  @override
  GetCurrentUserStart get _value => super._value as GetCurrentUserStart;
}

/// @nodoc

class _$GetCurrentUserStart implements GetCurrentUserStart {
  const _$GetCurrentUserStart();

  @override
  String toString() {
    return 'GetCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCurrentUserStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserStart implements GetCurrentUser {
  const factory GetCurrentUserStart() = _$GetCurrentUserStart;
}

/// @nodoc
abstract class $GetCurrentUserSuccessfulCopyWith<$Res> {
  factory $GetCurrentUserSuccessfulCopyWith(GetCurrentUserSuccessful value,
          $Res Function(GetCurrentUserSuccessful) then) =
      _$GetCurrentUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GetCurrentUserSuccessfulCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserSuccessfulCopyWith<$Res> {
  _$GetCurrentUserSuccessfulCopyWithImpl(GetCurrentUserSuccessful _value,
      $Res Function(GetCurrentUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetCurrentUserSuccessful));

  @override
  GetCurrentUserSuccessful get _value =>
      super._value as GetCurrentUserSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(GetCurrentUserSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
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

@Implements<UserAction>()
class _$GetCurrentUserSuccessful implements GetCurrentUserSuccessful {
  const _$GetCurrentUserSuccessful(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'GetCurrentUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentUserSuccessful &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $GetCurrentUserSuccessfulCopyWith<GetCurrentUserSuccessful> get copyWith =>
      _$GetCurrentUserSuccessfulCopyWithImpl<GetCurrentUserSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserSuccessful implements GetCurrentUser, UserAction {
  const factory GetCurrentUserSuccessful(AppUser? user) =
      _$GetCurrentUserSuccessful;

  AppUser? get user;
  @JsonKey(ignore: true)
  $GetCurrentUserSuccessfulCopyWith<GetCurrentUserSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentUserErrorCopyWith<$Res> {
  factory $GetCurrentUserErrorCopyWith(
          GetCurrentUserError value, $Res Function(GetCurrentUserError) then) =
      _$GetCurrentUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetCurrentUserErrorCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserErrorCopyWith<$Res> {
  _$GetCurrentUserErrorCopyWithImpl(
      GetCurrentUserError _value, $Res Function(GetCurrentUserError) _then)
      : super(_value, (v) => _then(v as GetCurrentUserError));

  @override
  GetCurrentUserError get _value => super._value as GetCurrentUserError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetCurrentUserError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$GetCurrentUserError implements GetCurrentUserError {
  const _$GetCurrentUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetCurrentUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $GetCurrentUserErrorCopyWith<GetCurrentUserError> get copyWith =>
      _$GetCurrentUserErrorCopyWithImpl<GetCurrentUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserError implements GetCurrentUser, ErrorAction {
  const factory GetCurrentUserError(Object error, StackTrace stackTrace) =
      _$GetCurrentUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetCurrentUserErrorCopyWith<GetCurrentUserError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

  LoginStart call(
      {required String email,
      required String password,
      required ActionResult onResult}) {
    return LoginStart(
      email: email,
      password: password,
      onResult: onResult,
    );
  }

  LoginSuccessful successful(AppUser user) {
    return LoginSuccessful(
      user,
    );
  }

  LoginError error(Object error, StackTrace stackTrace) {
    return LoginError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $LoginStartCopyWith<$Res> {
  factory $LoginStartCopyWith(
          LoginStart value, $Res Function(LoginStart) then) =
      _$LoginStartCopyWithImpl<$Res>;
  $Res call({String email, String password, ActionResult onResult});
}

/// @nodoc
class _$LoginStartCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginStartCopyWith<$Res> {
  _$LoginStartCopyWithImpl(LoginStart _value, $Res Function(LoginStart) _then)
      : super(_value, (v) => _then(v as LoginStart));

  @override
  LoginStart get _value => super._value as LoginStart;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? onResult = freezed,
  }) {
    return _then(LoginStart(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onResult: onResult == freezed
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$LoginStart implements LoginStart {
  const _$LoginStart(
      {required this.email, required this.password, required this.onResult});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResult onResult;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, onResult: $onResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginStart &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            (identical(other.onResult, onResult) ||
                other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      onResult);

  @JsonKey(ignore: true)
  @override
  $LoginStartCopyWith<LoginStart> get copyWith =>
      _$LoginStartCopyWithImpl<LoginStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, onResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoginStart implements Login {
  const factory LoginStart(
      {required String email,
      required String password,
      required ActionResult onResult}) = _$LoginStart;

  String get email;
  String get password;
  ActionResult get onResult;
  @JsonKey(ignore: true)
  $LoginStartCopyWith<LoginStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

@Implements<UserAction>()
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginSuccessful &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login, UserAction {
  const factory LoginSuccessful(AppUser user) = _$LoginSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(LoginError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$LoginError implements LoginError {
  const _$LoginError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Login.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(Object error, StackTrace stackTrace) = _$LoginError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $LoginErrorCopyWith<LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateUserTearOff {
  const _$CreateUserTearOff();

  CreateUserStart call(
      {required String email,
      required String password,
      required String username,
      required String photoUrl,
      required ActionResult onResult}) {
    return CreateUserStart(
      email: email,
      password: password,
      username: username,
      photoUrl: photoUrl,
      onResult: onResult,
    );
  }

  CreateUserSuccessful successful(AppUser user) {
    return CreateUserSuccessful(
      user,
    );
  }

  CreateUserError error(Object error, StackTrace stackTrace) {
    return CreateUserError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $CreateUser = _$CreateUserTearOff();

/// @nodoc
mixin _$CreateUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res> {
  factory $CreateUserCopyWith(
          CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res> implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._value, this._then);

  final CreateUser _value;
  // ignore: unused_field
  final $Res Function(CreateUser) _then;
}

/// @nodoc
abstract class $CreateUserStartCopyWith<$Res> {
  factory $CreateUserStartCopyWith(
          CreateUserStart value, $Res Function(CreateUserStart) then) =
      _$CreateUserStartCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String username,
      String photoUrl,
      ActionResult onResult});
}

/// @nodoc
class _$CreateUserStartCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res>
    implements $CreateUserStartCopyWith<$Res> {
  _$CreateUserStartCopyWithImpl(
      CreateUserStart _value, $Res Function(CreateUserStart) _then)
      : super(_value, (v) => _then(v as CreateUserStart));

  @override
  CreateUserStart get _value => super._value as CreateUserStart;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? onResult = freezed,
  }) {
    return _then(CreateUserStart(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      onResult: onResult == freezed
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$CreateUserStart implements CreateUserStart {
  const _$CreateUserStart(
      {required this.email,
      required this.password,
      required this.username,
      required this.photoUrl,
      required this.onResult});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final String photoUrl;
  @override
  final ActionResult onResult;

  @override
  String toString() {
    return 'CreateUser(email: $email, password: $password, username: $username, photoUrl: $photoUrl, onResult: $onResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateUserStart &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            (identical(other.onResult, onResult) ||
                other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(photoUrl),
      onResult);

  @JsonKey(ignore: true)
  @override
  $CreateUserStartCopyWith<CreateUserStart> get copyWith =>
      _$CreateUserStartCopyWithImpl<CreateUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, username, photoUrl, onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, username, photoUrl, onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, username, photoUrl, onResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateUserStart implements CreateUser {
  const factory CreateUserStart(
      {required String email,
      required String password,
      required String username,
      required String photoUrl,
      required ActionResult onResult}) = _$CreateUserStart;

  String get email;
  String get password;
  String get username;
  String get photoUrl;
  ActionResult get onResult;
  @JsonKey(ignore: true)
  $CreateUserStartCopyWith<CreateUserStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserSuccessfulCopyWith<$Res> {
  factory $CreateUserSuccessfulCopyWith(CreateUserSuccessful value,
          $Res Function(CreateUserSuccessful) then) =
      _$CreateUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$CreateUserSuccessfulCopyWithImpl<$Res>
    extends _$CreateUserCopyWithImpl<$Res>
    implements $CreateUserSuccessfulCopyWith<$Res> {
  _$CreateUserSuccessfulCopyWithImpl(
      CreateUserSuccessful _value, $Res Function(CreateUserSuccessful) _then)
      : super(_value, (v) => _then(v as CreateUserSuccessful));

  @override
  CreateUserSuccessful get _value => super._value as CreateUserSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(CreateUserSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

@Implements<UserAction>()
class _$CreateUserSuccessful implements CreateUserSuccessful {
  const _$CreateUserSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'CreateUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateUserSuccessful &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $CreateUserSuccessfulCopyWith<CreateUserSuccessful> get copyWith =>
      _$CreateUserSuccessfulCopyWithImpl<CreateUserSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateUserSuccessful implements CreateUser, UserAction {
  const factory CreateUserSuccessful(AppUser user) = _$CreateUserSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  $CreateUserSuccessfulCopyWith<CreateUserSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserErrorCopyWith<$Res> {
  factory $CreateUserErrorCopyWith(
          CreateUserError value, $Res Function(CreateUserError) then) =
      _$CreateUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$CreateUserErrorCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res>
    implements $CreateUserErrorCopyWith<$Res> {
  _$CreateUserErrorCopyWithImpl(
      CreateUserError _value, $Res Function(CreateUserError) _then)
      : super(_value, (v) => _then(v as CreateUserError));

  @override
  CreateUserError get _value => super._value as CreateUserError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(CreateUserError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$CreateUserError implements CreateUserError {
  const _$CreateUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $CreateUserErrorCopyWith<CreateUserError> get copyWith =>
      _$CreateUserErrorCopyWithImpl<CreateUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateUserError implements CreateUser, ErrorAction {
  const factory CreateUserError(Object error, StackTrace stackTrace) =
      _$CreateUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $CreateUserErrorCopyWith<CreateUserError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LogoutTearOff {
  const _$LogoutTearOff();

  LogoutStart call() {
    return const LogoutStart();
  }

  LogoutSuccessful successful() {
    return const LogoutSuccessful();
  }

  LogoutError error(Object error, StackTrace stackTrace) {
    return LogoutError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $Logout = _$LogoutTearOff();

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  final Logout _value;
  // ignore: unused_field
  final $Res Function(Logout) _then;
}

/// @nodoc
abstract class $LogoutStartCopyWith<$Res> {
  factory $LogoutStartCopyWith(
          LogoutStart value, $Res Function(LogoutStart) then) =
      _$LogoutStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutStartCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutStartCopyWith<$Res> {
  _$LogoutStartCopyWithImpl(
      LogoutStart _value, $Res Function(LogoutStart) _then)
      : super(_value, (v) => _then(v as LogoutStart));

  @override
  LogoutStart get _value => super._value as LogoutStart;
}

/// @nodoc

class _$LogoutStart implements LogoutStart {
  const _$LogoutStart();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LogoutStart implements Logout {
  const factory LogoutStart() = _$LogoutStart;
}

/// @nodoc
abstract class $LogoutSuccessfulCopyWith<$Res> {
  factory $LogoutSuccessfulCopyWith(
          LogoutSuccessful value, $Res Function(LogoutSuccessful) then) =
      _$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutSuccessfulCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutSuccessfulCopyWith<$Res> {
  _$LogoutSuccessfulCopyWithImpl(
      LogoutSuccessful _value, $Res Function(LogoutSuccessful) _then)
      : super(_value, (v) => _then(v as LogoutSuccessful));

  @override
  LogoutSuccessful get _value => super._value as LogoutSuccessful;
}

/// @nodoc

class _$LogoutSuccessful implements LogoutSuccessful {
  const _$LogoutSuccessful();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessful;
}

/// @nodoc
abstract class $LogoutErrorCopyWith<$Res> {
  factory $LogoutErrorCopyWith(
          LogoutError value, $Res Function(LogoutError) then) =
      _$LogoutErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$LogoutErrorCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutErrorCopyWith<$Res> {
  _$LogoutErrorCopyWithImpl(
      LogoutError _value, $Res Function(LogoutError) _then)
      : super(_value, (v) => _then(v as LogoutError));

  @override
  LogoutError get _value => super._value as LogoutError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(LogoutError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$LogoutError implements LogoutError {
  const _$LogoutError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Logout.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogoutError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $LogoutErrorCopyWith<LogoutError> get copyWith =>
      _$LogoutErrorCopyWithImpl<LogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout, ErrorAction {
  const factory LogoutError(Object error, StackTrace stackTrace) =
      _$LogoutError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $LogoutErrorCopyWith<LogoutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetProfilePhotosTearOff {
  const _$GetProfilePhotosTearOff();

  GetProfilePhotosStart call() {
    return const GetProfilePhotosStart();
  }

  GetProfilePhotosSuccessful successful(List<String> photoUrls) {
    return GetProfilePhotosSuccessful(
      photoUrls,
    );
  }

  GetProfilePhotosError error(Object error, StackTrace stackTrace) {
    return GetProfilePhotosError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetProfilePhotos = _$GetProfilePhotosTearOff();

/// @nodoc
mixin _$GetProfilePhotos {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<String> photoUrls) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<String> photoUrls)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<String> photoUrls)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value) $default, {
    required TResult Function(GetProfilePhotosSuccessful value) successful,
    required TResult Function(GetProfilePhotosError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value)? $default, {
    TResult Function(GetProfilePhotosSuccessful value)? successful,
    TResult Function(GetProfilePhotosError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value)? $default, {
    TResult Function(GetProfilePhotosSuccessful value)? successful,
    TResult Function(GetProfilePhotosError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfilePhotosCopyWith<$Res> {
  factory $GetProfilePhotosCopyWith(
          GetProfilePhotos value, $Res Function(GetProfilePhotos) then) =
      _$GetProfilePhotosCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProfilePhotosCopyWithImpl<$Res>
    implements $GetProfilePhotosCopyWith<$Res> {
  _$GetProfilePhotosCopyWithImpl(this._value, this._then);

  final GetProfilePhotos _value;
  // ignore: unused_field
  final $Res Function(GetProfilePhotos) _then;
}

/// @nodoc
abstract class $GetProfilePhotosStartCopyWith<$Res> {
  factory $GetProfilePhotosStartCopyWith(GetProfilePhotosStart value,
          $Res Function(GetProfilePhotosStart) then) =
      _$GetProfilePhotosStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProfilePhotosStartCopyWithImpl<$Res>
    extends _$GetProfilePhotosCopyWithImpl<$Res>
    implements $GetProfilePhotosStartCopyWith<$Res> {
  _$GetProfilePhotosStartCopyWithImpl(
      GetProfilePhotosStart _value, $Res Function(GetProfilePhotosStart) _then)
      : super(_value, (v) => _then(v as GetProfilePhotosStart));

  @override
  GetProfilePhotosStart get _value => super._value as GetProfilePhotosStart;
}

/// @nodoc

class _$GetProfilePhotosStart implements GetProfilePhotosStart {
  const _$GetProfilePhotosStart();

  @override
  String toString() {
    return 'GetProfilePhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProfilePhotosStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<String> photoUrls) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<String> photoUrls)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<String> photoUrls)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value) $default, {
    required TResult Function(GetProfilePhotosSuccessful value) successful,
    required TResult Function(GetProfilePhotosError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value)? $default, {
    TResult Function(GetProfilePhotosSuccessful value)? successful,
    TResult Function(GetProfilePhotosError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value)? $default, {
    TResult Function(GetProfilePhotosSuccessful value)? successful,
    TResult Function(GetProfilePhotosError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetProfilePhotosStart implements GetProfilePhotos {
  const factory GetProfilePhotosStart() = _$GetProfilePhotosStart;
}

/// @nodoc
abstract class $GetProfilePhotosSuccessfulCopyWith<$Res> {
  factory $GetProfilePhotosSuccessfulCopyWith(GetProfilePhotosSuccessful value,
          $Res Function(GetProfilePhotosSuccessful) then) =
      _$GetProfilePhotosSuccessfulCopyWithImpl<$Res>;
  $Res call({List<String> photoUrls});
}

/// @nodoc
class _$GetProfilePhotosSuccessfulCopyWithImpl<$Res>
    extends _$GetProfilePhotosCopyWithImpl<$Res>
    implements $GetProfilePhotosSuccessfulCopyWith<$Res> {
  _$GetProfilePhotosSuccessfulCopyWithImpl(GetProfilePhotosSuccessful _value,
      $Res Function(GetProfilePhotosSuccessful) _then)
      : super(_value, (v) => _then(v as GetProfilePhotosSuccessful));

  @override
  GetProfilePhotosSuccessful get _value =>
      super._value as GetProfilePhotosSuccessful;

  @override
  $Res call({
    Object? photoUrls = freezed,
  }) {
    return _then(GetProfilePhotosSuccessful(
      photoUrls == freezed
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetProfilePhotosSuccessful implements GetProfilePhotosSuccessful {
  const _$GetProfilePhotosSuccessful(this.photoUrls);

  @override
  final List<String> photoUrls;

  @override
  String toString() {
    return 'GetProfilePhotos.successful(photoUrls: $photoUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProfilePhotosSuccessful &&
            const DeepCollectionEquality().equals(other.photoUrls, photoUrls));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photoUrls));

  @JsonKey(ignore: true)
  @override
  $GetProfilePhotosSuccessfulCopyWith<GetProfilePhotosSuccessful>
      get copyWith =>
          _$GetProfilePhotosSuccessfulCopyWithImpl<GetProfilePhotosSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<String> photoUrls) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(photoUrls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<String> photoUrls)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(photoUrls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<String> photoUrls)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(photoUrls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value) $default, {
    required TResult Function(GetProfilePhotosSuccessful value) successful,
    required TResult Function(GetProfilePhotosError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value)? $default, {
    TResult Function(GetProfilePhotosSuccessful value)? successful,
    TResult Function(GetProfilePhotosError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value)? $default, {
    TResult Function(GetProfilePhotosSuccessful value)? successful,
    TResult Function(GetProfilePhotosError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetProfilePhotosSuccessful implements GetProfilePhotos {
  const factory GetProfilePhotosSuccessful(List<String> photoUrls) =
      _$GetProfilePhotosSuccessful;

  List<String> get photoUrls;
  @JsonKey(ignore: true)
  $GetProfilePhotosSuccessfulCopyWith<GetProfilePhotosSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfilePhotosErrorCopyWith<$Res> {
  factory $GetProfilePhotosErrorCopyWith(GetProfilePhotosError value,
          $Res Function(GetProfilePhotosError) then) =
      _$GetProfilePhotosErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetProfilePhotosErrorCopyWithImpl<$Res>
    extends _$GetProfilePhotosCopyWithImpl<$Res>
    implements $GetProfilePhotosErrorCopyWith<$Res> {
  _$GetProfilePhotosErrorCopyWithImpl(
      GetProfilePhotosError _value, $Res Function(GetProfilePhotosError) _then)
      : super(_value, (v) => _then(v as GetProfilePhotosError));

  @override
  GetProfilePhotosError get _value => super._value as GetProfilePhotosError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetProfilePhotosError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$GetProfilePhotosError implements GetProfilePhotosError {
  const _$GetProfilePhotosError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetProfilePhotos.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProfilePhotosError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $GetProfilePhotosErrorCopyWith<GetProfilePhotosError> get copyWith =>
      _$GetProfilePhotosErrorCopyWithImpl<GetProfilePhotosError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<String> photoUrls) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<String> photoUrls)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<String> photoUrls)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value) $default, {
    required TResult Function(GetProfilePhotosSuccessful value) successful,
    required TResult Function(GetProfilePhotosError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value)? $default, {
    TResult Function(GetProfilePhotosSuccessful value)? successful,
    TResult Function(GetProfilePhotosError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetProfilePhotosStart value)? $default, {
    TResult Function(GetProfilePhotosSuccessful value)? successful,
    TResult Function(GetProfilePhotosError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetProfilePhotosError implements GetProfilePhotos, ErrorAction {
  const factory GetProfilePhotosError(Object error, StackTrace stackTrace) =
      _$GetProfilePhotosError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetProfilePhotosErrorCopyWith<GetProfilePhotosError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetProfilePhotoTearOff {
  const _$SetProfilePhotoTearOff();

  SetProfilePhoto$ call(int selectedProfilePhoto) {
    return SetProfilePhoto$(
      selectedProfilePhoto,
    );
  }
}

/// @nodoc
const $SetProfilePhoto = _$SetProfilePhotoTearOff();

/// @nodoc
mixin _$SetProfilePhoto {
  int get selectedProfilePhoto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetProfilePhotoCopyWith<SetProfilePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetProfilePhotoCopyWith<$Res> {
  factory $SetProfilePhotoCopyWith(
          SetProfilePhoto value, $Res Function(SetProfilePhoto) then) =
      _$SetProfilePhotoCopyWithImpl<$Res>;
  $Res call({int selectedProfilePhoto});
}

/// @nodoc
class _$SetProfilePhotoCopyWithImpl<$Res>
    implements $SetProfilePhotoCopyWith<$Res> {
  _$SetProfilePhotoCopyWithImpl(this._value, this._then);

  final SetProfilePhoto _value;
  // ignore: unused_field
  final $Res Function(SetProfilePhoto) _then;

  @override
  $Res call({
    Object? selectedProfilePhoto = freezed,
  }) {
    return _then(_value.copyWith(
      selectedProfilePhoto: selectedProfilePhoto == freezed
          ? _value.selectedProfilePhoto
          : selectedProfilePhoto // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetProfilePhoto$CopyWith<$Res>
    implements $SetProfilePhotoCopyWith<$Res> {
  factory $SetProfilePhoto$CopyWith(
          SetProfilePhoto$ value, $Res Function(SetProfilePhoto$) then) =
      _$SetProfilePhoto$CopyWithImpl<$Res>;
  @override
  $Res call({int selectedProfilePhoto});
}

/// @nodoc
class _$SetProfilePhoto$CopyWithImpl<$Res>
    extends _$SetProfilePhotoCopyWithImpl<$Res>
    implements $SetProfilePhoto$CopyWith<$Res> {
  _$SetProfilePhoto$CopyWithImpl(
      SetProfilePhoto$ _value, $Res Function(SetProfilePhoto$) _then)
      : super(_value, (v) => _then(v as SetProfilePhoto$));

  @override
  SetProfilePhoto$ get _value => super._value as SetProfilePhoto$;

  @override
  $Res call({
    Object? selectedProfilePhoto = freezed,
  }) {
    return _then(SetProfilePhoto$(
      selectedProfilePhoto == freezed
          ? _value.selectedProfilePhoto
          : selectedProfilePhoto // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetProfilePhoto$ implements SetProfilePhoto$ {
  const _$SetProfilePhoto$(this.selectedProfilePhoto);

  @override
  final int selectedProfilePhoto;

  @override
  String toString() {
    return 'SetProfilePhoto(selectedProfilePhoto: $selectedProfilePhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetProfilePhoto$ &&
            const DeepCollectionEquality()
                .equals(other.selectedProfilePhoto, selectedProfilePhoto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedProfilePhoto));

  @JsonKey(ignore: true)
  @override
  $SetProfilePhoto$CopyWith<SetProfilePhoto$> get copyWith =>
      _$SetProfilePhoto$CopyWithImpl<SetProfilePhoto$>(this, _$identity);
}

abstract class SetProfilePhoto$ implements SetProfilePhoto {
  const factory SetProfilePhoto$(int selectedProfilePhoto) = _$SetProfilePhoto$;

  @override
  int get selectedProfilePhoto;
  @override
  @JsonKey(ignore: true)
  $SetProfilePhoto$CopyWith<SetProfilePhoto$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetDifficultyTearOff {
  const _$SetDifficultyTearOff();

  SetDifficulty$ call(int difficulty) {
    return SetDifficulty$(
      difficulty,
    );
  }
}

/// @nodoc
const $SetDifficulty = _$SetDifficultyTearOff();

/// @nodoc
mixin _$SetDifficulty {
  int get difficulty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetDifficultyCopyWith<SetDifficulty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDifficultyCopyWith<$Res> {
  factory $SetDifficultyCopyWith(
          SetDifficulty value, $Res Function(SetDifficulty) then) =
      _$SetDifficultyCopyWithImpl<$Res>;
  $Res call({int difficulty});
}

/// @nodoc
class _$SetDifficultyCopyWithImpl<$Res>
    implements $SetDifficultyCopyWith<$Res> {
  _$SetDifficultyCopyWithImpl(this._value, this._then);

  final SetDifficulty _value;
  // ignore: unused_field
  final $Res Function(SetDifficulty) _then;

  @override
  $Res call({
    Object? difficulty = freezed,
  }) {
    return _then(_value.copyWith(
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetDifficulty$CopyWith<$Res>
    implements $SetDifficultyCopyWith<$Res> {
  factory $SetDifficulty$CopyWith(
          SetDifficulty$ value, $Res Function(SetDifficulty$) then) =
      _$SetDifficulty$CopyWithImpl<$Res>;
  @override
  $Res call({int difficulty});
}

/// @nodoc
class _$SetDifficulty$CopyWithImpl<$Res>
    extends _$SetDifficultyCopyWithImpl<$Res>
    implements $SetDifficulty$CopyWith<$Res> {
  _$SetDifficulty$CopyWithImpl(
      SetDifficulty$ _value, $Res Function(SetDifficulty$) _then)
      : super(_value, (v) => _then(v as SetDifficulty$));

  @override
  SetDifficulty$ get _value => super._value as SetDifficulty$;

  @override
  $Res call({
    Object? difficulty = freezed,
  }) {
    return _then(SetDifficulty$(
      difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetDifficulty$ implements SetDifficulty$ {
  const _$SetDifficulty$(this.difficulty);

  @override
  final int difficulty;

  @override
  String toString() {
    return 'SetDifficulty(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetDifficulty$ &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(difficulty));

  @JsonKey(ignore: true)
  @override
  $SetDifficulty$CopyWith<SetDifficulty$> get copyWith =>
      _$SetDifficulty$CopyWithImpl<SetDifficulty$>(this, _$identity);
}

abstract class SetDifficulty$ implements SetDifficulty {
  const factory SetDifficulty$(int difficulty) = _$SetDifficulty$;

  @override
  int get difficulty;
  @override
  @JsonKey(ignore: true)
  $SetDifficulty$CopyWith<SetDifficulty$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetDifficultyColorTearOff {
  const _$SetDifficultyColorTearOff();

  SetDifficultyColor$ call(int position) {
    return SetDifficultyColor$(
      position,
    );
  }
}

/// @nodoc
const $SetDifficultyColor = _$SetDifficultyColorTearOff();

/// @nodoc
mixin _$SetDifficultyColor {
  int get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetDifficultyColorCopyWith<SetDifficultyColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDifficultyColorCopyWith<$Res> {
  factory $SetDifficultyColorCopyWith(
          SetDifficultyColor value, $Res Function(SetDifficultyColor) then) =
      _$SetDifficultyColorCopyWithImpl<$Res>;
  $Res call({int position});
}

/// @nodoc
class _$SetDifficultyColorCopyWithImpl<$Res>
    implements $SetDifficultyColorCopyWith<$Res> {
  _$SetDifficultyColorCopyWithImpl(this._value, this._then);

  final SetDifficultyColor _value;
  // ignore: unused_field
  final $Res Function(SetDifficultyColor) _then;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetDifficultyColor$CopyWith<$Res>
    implements $SetDifficultyColorCopyWith<$Res> {
  factory $SetDifficultyColor$CopyWith(
          SetDifficultyColor$ value, $Res Function(SetDifficultyColor$) then) =
      _$SetDifficultyColor$CopyWithImpl<$Res>;
  @override
  $Res call({int position});
}

/// @nodoc
class _$SetDifficultyColor$CopyWithImpl<$Res>
    extends _$SetDifficultyColorCopyWithImpl<$Res>
    implements $SetDifficultyColor$CopyWith<$Res> {
  _$SetDifficultyColor$CopyWithImpl(
      SetDifficultyColor$ _value, $Res Function(SetDifficultyColor$) _then)
      : super(_value, (v) => _then(v as SetDifficultyColor$));

  @override
  SetDifficultyColor$ get _value => super._value as SetDifficultyColor$;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(SetDifficultyColor$(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetDifficultyColor$ implements SetDifficultyColor$ {
  const _$SetDifficultyColor$(this.position);

  @override
  final int position;

  @override
  String toString() {
    return 'SetDifficultyColor(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetDifficultyColor$ &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  $SetDifficultyColor$CopyWith<SetDifficultyColor$> get copyWith =>
      _$SetDifficultyColor$CopyWithImpl<SetDifficultyColor$>(this, _$identity);
}

abstract class SetDifficultyColor$ implements SetDifficultyColor {
  const factory SetDifficultyColor$(int position) = _$SetDifficultyColor$;

  @override
  int get position;
  @override
  @JsonKey(ignore: true)
  $SetDifficultyColor$CopyWith<SetDifficultyColor$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetSelectedPieceTearOff {
  const _$SetSelectedPieceTearOff();

  SetSelectedPiece$ call(Tuple2<int, int> piece) {
    return SetSelectedPiece$(
      piece,
    );
  }
}

/// @nodoc
const $SetSelectedPiece = _$SetSelectedPieceTearOff();

/// @nodoc
mixin _$SetSelectedPiece {
  Tuple2<int, int> get piece => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedPieceCopyWith<SetSelectedPiece> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedPieceCopyWith<$Res> {
  factory $SetSelectedPieceCopyWith(
          SetSelectedPiece value, $Res Function(SetSelectedPiece) then) =
      _$SetSelectedPieceCopyWithImpl<$Res>;
  $Res call({Tuple2<int, int> piece});
}

/// @nodoc
class _$SetSelectedPieceCopyWithImpl<$Res>
    implements $SetSelectedPieceCopyWith<$Res> {
  _$SetSelectedPieceCopyWithImpl(this._value, this._then);

  final SetSelectedPiece _value;
  // ignore: unused_field
  final $Res Function(SetSelectedPiece) _then;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedPiece$CopyWith<$Res>
    implements $SetSelectedPieceCopyWith<$Res> {
  factory $SetSelectedPiece$CopyWith(
          SetSelectedPiece$ value, $Res Function(SetSelectedPiece$) then) =
      _$SetSelectedPiece$CopyWithImpl<$Res>;
  @override
  $Res call({Tuple2<int, int> piece});
}

/// @nodoc
class _$SetSelectedPiece$CopyWithImpl<$Res>
    extends _$SetSelectedPieceCopyWithImpl<$Res>
    implements $SetSelectedPiece$CopyWith<$Res> {
  _$SetSelectedPiece$CopyWithImpl(
      SetSelectedPiece$ _value, $Res Function(SetSelectedPiece$) _then)
      : super(_value, (v) => _then(v as SetSelectedPiece$));

  @override
  SetSelectedPiece$ get _value => super._value as SetSelectedPiece$;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(SetSelectedPiece$(
      piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
    ));
  }
}

/// @nodoc

class _$SetSelectedPiece$ implements SetSelectedPiece$ {
  const _$SetSelectedPiece$(this.piece);

  @override
  final Tuple2<int, int> piece;

  @override
  String toString() {
    return 'SetSelectedPiece(piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetSelectedPiece$ &&
            const DeepCollectionEquality().equals(other.piece, piece));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(piece));

  @JsonKey(ignore: true)
  @override
  $SetSelectedPiece$CopyWith<SetSelectedPiece$> get copyWith =>
      _$SetSelectedPiece$CopyWithImpl<SetSelectedPiece$>(this, _$identity);
}

abstract class SetSelectedPiece$ implements SetSelectedPiece {
  const factory SetSelectedPiece$(Tuple2<int, int> piece) = _$SetSelectedPiece$;

  @override
  Tuple2<int, int> get piece;
  @override
  @JsonKey(ignore: true)
  $SetSelectedPiece$CopyWith<SetSelectedPiece$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetPieceToTableTearOff {
  const _$SetPieceToTableTearOff();

  SetPieceToTable$ call(Tuple2<int, int> piece, int position) {
    return SetPieceToTable$(
      piece,
      position,
    );
  }
}

/// @nodoc
const $SetPieceToTable = _$SetPieceToTableTearOff();

/// @nodoc
mixin _$SetPieceToTable {
  Tuple2<int, int> get piece => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetPieceToTableCopyWith<SetPieceToTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPieceToTableCopyWith<$Res> {
  factory $SetPieceToTableCopyWith(
          SetPieceToTable value, $Res Function(SetPieceToTable) then) =
      _$SetPieceToTableCopyWithImpl<$Res>;
  $Res call({Tuple2<int, int> piece, int position});
}

/// @nodoc
class _$SetPieceToTableCopyWithImpl<$Res>
    implements $SetPieceToTableCopyWith<$Res> {
  _$SetPieceToTableCopyWithImpl(this._value, this._then);

  final SetPieceToTable _value;
  // ignore: unused_field
  final $Res Function(SetPieceToTable) _then;

  @override
  $Res call({
    Object? piece = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetPieceToTable$CopyWith<$Res>
    implements $SetPieceToTableCopyWith<$Res> {
  factory $SetPieceToTable$CopyWith(
          SetPieceToTable$ value, $Res Function(SetPieceToTable$) then) =
      _$SetPieceToTable$CopyWithImpl<$Res>;
  @override
  $Res call({Tuple2<int, int> piece, int position});
}

/// @nodoc
class _$SetPieceToTable$CopyWithImpl<$Res>
    extends _$SetPieceToTableCopyWithImpl<$Res>
    implements $SetPieceToTable$CopyWith<$Res> {
  _$SetPieceToTable$CopyWithImpl(
      SetPieceToTable$ _value, $Res Function(SetPieceToTable$) _then)
      : super(_value, (v) => _then(v as SetPieceToTable$));

  @override
  SetPieceToTable$ get _value => super._value as SetPieceToTable$;

  @override
  $Res call({
    Object? piece = freezed,
    Object? position = freezed,
  }) {
    return _then(SetPieceToTable$(
      piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetPieceToTable$ implements SetPieceToTable$ {
  const _$SetPieceToTable$(this.piece, this.position);

  @override
  final Tuple2<int, int> piece;
  @override
  final int position;

  @override
  String toString() {
    return 'SetPieceToTable(piece: $piece, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetPieceToTable$ &&
            const DeepCollectionEquality().equals(other.piece, piece) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(piece),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  $SetPieceToTable$CopyWith<SetPieceToTable$> get copyWith =>
      _$SetPieceToTable$CopyWithImpl<SetPieceToTable$>(this, _$identity);
}

abstract class SetPieceToTable$ implements SetPieceToTable {
  const factory SetPieceToTable$(Tuple2<int, int> piece, int position) =
      _$SetPieceToTable$;

  @override
  Tuple2<int, int> get piece;
  @override
  int get position;
  @override
  @JsonKey(ignore: true)
  $SetPieceToTable$CopyWith<SetPieceToTable$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetGameStatusTearOff {
  const _$SetGameStatusTearOff();

  SetGameStatus$ call(int status) {
    return SetGameStatus$(
      status,
    );
  }
}

/// @nodoc
const $SetGameStatus = _$SetGameStatusTearOff();

/// @nodoc
mixin _$SetGameStatus {
  int get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetGameStatusCopyWith<SetGameStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetGameStatusCopyWith<$Res> {
  factory $SetGameStatusCopyWith(
          SetGameStatus value, $Res Function(SetGameStatus) then) =
      _$SetGameStatusCopyWithImpl<$Res>;
  $Res call({int status});
}

/// @nodoc
class _$SetGameStatusCopyWithImpl<$Res>
    implements $SetGameStatusCopyWith<$Res> {
  _$SetGameStatusCopyWithImpl(this._value, this._then);

  final SetGameStatus _value;
  // ignore: unused_field
  final $Res Function(SetGameStatus) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetGameStatus$CopyWith<$Res>
    implements $SetGameStatusCopyWith<$Res> {
  factory $SetGameStatus$CopyWith(
          SetGameStatus$ value, $Res Function(SetGameStatus$) then) =
      _$SetGameStatus$CopyWithImpl<$Res>;
  @override
  $Res call({int status});
}

/// @nodoc
class _$SetGameStatus$CopyWithImpl<$Res>
    extends _$SetGameStatusCopyWithImpl<$Res>
    implements $SetGameStatus$CopyWith<$Res> {
  _$SetGameStatus$CopyWithImpl(
      SetGameStatus$ _value, $Res Function(SetGameStatus$) _then)
      : super(_value, (v) => _then(v as SetGameStatus$));

  @override
  SetGameStatus$ get _value => super._value as SetGameStatus$;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(SetGameStatus$(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetGameStatus$ implements SetGameStatus$ {
  const _$SetGameStatus$(this.status);

  @override
  final int status;

  @override
  String toString() {
    return 'SetGameStatus(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetGameStatus$ &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $SetGameStatus$CopyWith<SetGameStatus$> get copyWith =>
      _$SetGameStatus$CopyWithImpl<SetGameStatus$>(this, _$identity);
}

abstract class SetGameStatus$ implements SetGameStatus {
  const factory SetGameStatus$(int status) = _$SetGameStatus$;

  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  $SetGameStatus$CopyWith<SetGameStatus$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetAvailablePlayerOnePieceTearOff {
  const _$SetAvailablePlayerOnePieceTearOff();

  SetAvailablePlayerOnePiece$ call({required int piece, required bool remove}) {
    return SetAvailablePlayerOnePiece$(
      piece: piece,
      remove: remove,
    );
  }
}

/// @nodoc
const $SetAvailablePlayerOnePiece = _$SetAvailablePlayerOnePieceTearOff();

/// @nodoc
mixin _$SetAvailablePlayerOnePiece {
  int get piece => throw _privateConstructorUsedError;
  bool get remove => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetAvailablePlayerOnePieceCopyWith<SetAvailablePlayerOnePiece>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAvailablePlayerOnePieceCopyWith<$Res> {
  factory $SetAvailablePlayerOnePieceCopyWith(SetAvailablePlayerOnePiece value,
          $Res Function(SetAvailablePlayerOnePiece) then) =
      _$SetAvailablePlayerOnePieceCopyWithImpl<$Res>;
  $Res call({int piece, bool remove});
}

/// @nodoc
class _$SetAvailablePlayerOnePieceCopyWithImpl<$Res>
    implements $SetAvailablePlayerOnePieceCopyWith<$Res> {
  _$SetAvailablePlayerOnePieceCopyWithImpl(this._value, this._then);

  final SetAvailablePlayerOnePiece _value;
  // ignore: unused_field
  final $Res Function(SetAvailablePlayerOnePiece) _then;

  @override
  $Res call({
    Object? piece = freezed,
    Object? remove = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $SetAvailablePlayerOnePiece$CopyWith<$Res>
    implements $SetAvailablePlayerOnePieceCopyWith<$Res> {
  factory $SetAvailablePlayerOnePiece$CopyWith(
          SetAvailablePlayerOnePiece$ value,
          $Res Function(SetAvailablePlayerOnePiece$) then) =
      _$SetAvailablePlayerOnePiece$CopyWithImpl<$Res>;
  @override
  $Res call({int piece, bool remove});
}

/// @nodoc
class _$SetAvailablePlayerOnePiece$CopyWithImpl<$Res>
    extends _$SetAvailablePlayerOnePieceCopyWithImpl<$Res>
    implements $SetAvailablePlayerOnePiece$CopyWith<$Res> {
  _$SetAvailablePlayerOnePiece$CopyWithImpl(SetAvailablePlayerOnePiece$ _value,
      $Res Function(SetAvailablePlayerOnePiece$) _then)
      : super(_value, (v) => _then(v as SetAvailablePlayerOnePiece$));

  @override
  SetAvailablePlayerOnePiece$ get _value =>
      super._value as SetAvailablePlayerOnePiece$;

  @override
  $Res call({
    Object? piece = freezed,
    Object? remove = freezed,
  }) {
    return _then(SetAvailablePlayerOnePiece$(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetAvailablePlayerOnePiece$ implements SetAvailablePlayerOnePiece$ {
  const _$SetAvailablePlayerOnePiece$(
      {required this.piece, required this.remove});

  @override
  final int piece;
  @override
  final bool remove;

  @override
  String toString() {
    return 'SetAvailablePlayerOnePiece(piece: $piece, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetAvailablePlayerOnePiece$ &&
            const DeepCollectionEquality().equals(other.piece, piece) &&
            const DeepCollectionEquality().equals(other.remove, remove));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(piece),
      const DeepCollectionEquality().hash(remove));

  @JsonKey(ignore: true)
  @override
  $SetAvailablePlayerOnePiece$CopyWith<SetAvailablePlayerOnePiece$>
      get copyWith => _$SetAvailablePlayerOnePiece$CopyWithImpl<
          SetAvailablePlayerOnePiece$>(this, _$identity);
}

abstract class SetAvailablePlayerOnePiece$
    implements SetAvailablePlayerOnePiece {
  const factory SetAvailablePlayerOnePiece$(
      {required int piece,
      required bool remove}) = _$SetAvailablePlayerOnePiece$;

  @override
  int get piece;
  @override
  bool get remove;
  @override
  @JsonKey(ignore: true)
  $SetAvailablePlayerOnePiece$CopyWith<SetAvailablePlayerOnePiece$>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetAvailablePlayerTwoPieceTearOff {
  const _$SetAvailablePlayerTwoPieceTearOff();

  SetAvailablePlayerTwoPiece$ call({required int piece, required bool remove}) {
    return SetAvailablePlayerTwoPiece$(
      piece: piece,
      remove: remove,
    );
  }
}

/// @nodoc
const $SetAvailablePlayerTwoPiece = _$SetAvailablePlayerTwoPieceTearOff();

/// @nodoc
mixin _$SetAvailablePlayerTwoPiece {
  int get piece => throw _privateConstructorUsedError;
  bool get remove => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetAvailablePlayerTwoPieceCopyWith<SetAvailablePlayerTwoPiece>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAvailablePlayerTwoPieceCopyWith<$Res> {
  factory $SetAvailablePlayerTwoPieceCopyWith(SetAvailablePlayerTwoPiece value,
          $Res Function(SetAvailablePlayerTwoPiece) then) =
      _$SetAvailablePlayerTwoPieceCopyWithImpl<$Res>;
  $Res call({int piece, bool remove});
}

/// @nodoc
class _$SetAvailablePlayerTwoPieceCopyWithImpl<$Res>
    implements $SetAvailablePlayerTwoPieceCopyWith<$Res> {
  _$SetAvailablePlayerTwoPieceCopyWithImpl(this._value, this._then);

  final SetAvailablePlayerTwoPiece _value;
  // ignore: unused_field
  final $Res Function(SetAvailablePlayerTwoPiece) _then;

  @override
  $Res call({
    Object? piece = freezed,
    Object? remove = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $SetAvailablePlayerTwoPiece$CopyWith<$Res>
    implements $SetAvailablePlayerTwoPieceCopyWith<$Res> {
  factory $SetAvailablePlayerTwoPiece$CopyWith(
          SetAvailablePlayerTwoPiece$ value,
          $Res Function(SetAvailablePlayerTwoPiece$) then) =
      _$SetAvailablePlayerTwoPiece$CopyWithImpl<$Res>;
  @override
  $Res call({int piece, bool remove});
}

/// @nodoc
class _$SetAvailablePlayerTwoPiece$CopyWithImpl<$Res>
    extends _$SetAvailablePlayerTwoPieceCopyWithImpl<$Res>
    implements $SetAvailablePlayerTwoPiece$CopyWith<$Res> {
  _$SetAvailablePlayerTwoPiece$CopyWithImpl(SetAvailablePlayerTwoPiece$ _value,
      $Res Function(SetAvailablePlayerTwoPiece$) _then)
      : super(_value, (v) => _then(v as SetAvailablePlayerTwoPiece$));

  @override
  SetAvailablePlayerTwoPiece$ get _value =>
      super._value as SetAvailablePlayerTwoPiece$;

  @override
  $Res call({
    Object? piece = freezed,
    Object? remove = freezed,
  }) {
    return _then(SetAvailablePlayerTwoPiece$(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetAvailablePlayerTwoPiece$ implements SetAvailablePlayerTwoPiece$ {
  const _$SetAvailablePlayerTwoPiece$(
      {required this.piece, required this.remove});

  @override
  final int piece;
  @override
  final bool remove;

  @override
  String toString() {
    return 'SetAvailablePlayerTwoPiece(piece: $piece, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetAvailablePlayerTwoPiece$ &&
            const DeepCollectionEquality().equals(other.piece, piece) &&
            const DeepCollectionEquality().equals(other.remove, remove));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(piece),
      const DeepCollectionEquality().hash(remove));

  @JsonKey(ignore: true)
  @override
  $SetAvailablePlayerTwoPiece$CopyWith<SetAvailablePlayerTwoPiece$>
      get copyWith => _$SetAvailablePlayerTwoPiece$CopyWithImpl<
          SetAvailablePlayerTwoPiece$>(this, _$identity);
}

abstract class SetAvailablePlayerTwoPiece$
    implements SetAvailablePlayerTwoPiece {
  const factory SetAvailablePlayerTwoPiece$(
      {required int piece,
      required bool remove}) = _$SetAvailablePlayerTwoPiece$;

  @override
  int get piece;
  @override
  bool get remove;
  @override
  @JsonKey(ignore: true)
  $SetAvailablePlayerTwoPiece$CopyWith<SetAvailablePlayerTwoPiece$>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetInitGameTearOff {
  const _$SetInitGameTearOff();

  SetInitGame$ call([int difficulty = -1]) {
    return SetInitGame$(
      difficulty,
    );
  }
}

/// @nodoc
const $SetInitGame = _$SetInitGameTearOff();

/// @nodoc
mixin _$SetInitGame {
  int get difficulty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetInitGameCopyWith<SetInitGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetInitGameCopyWith<$Res> {
  factory $SetInitGameCopyWith(
          SetInitGame value, $Res Function(SetInitGame) then) =
      _$SetInitGameCopyWithImpl<$Res>;
  $Res call({int difficulty});
}

/// @nodoc
class _$SetInitGameCopyWithImpl<$Res> implements $SetInitGameCopyWith<$Res> {
  _$SetInitGameCopyWithImpl(this._value, this._then);

  final SetInitGame _value;
  // ignore: unused_field
  final $Res Function(SetInitGame) _then;

  @override
  $Res call({
    Object? difficulty = freezed,
  }) {
    return _then(_value.copyWith(
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetInitGame$CopyWith<$Res>
    implements $SetInitGameCopyWith<$Res> {
  factory $SetInitGame$CopyWith(
          SetInitGame$ value, $Res Function(SetInitGame$) then) =
      _$SetInitGame$CopyWithImpl<$Res>;
  @override
  $Res call({int difficulty});
}

/// @nodoc
class _$SetInitGame$CopyWithImpl<$Res> extends _$SetInitGameCopyWithImpl<$Res>
    implements $SetInitGame$CopyWith<$Res> {
  _$SetInitGame$CopyWithImpl(
      SetInitGame$ _value, $Res Function(SetInitGame$) _then)
      : super(_value, (v) => _then(v as SetInitGame$));

  @override
  SetInitGame$ get _value => super._value as SetInitGame$;

  @override
  $Res call({
    Object? difficulty = freezed,
  }) {
    return _then(SetInitGame$(
      difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetInitGame$ implements SetInitGame$ {
  const _$SetInitGame$([this.difficulty = -1]);

  @JsonKey()
  @override
  final int difficulty;

  @override
  String toString() {
    return 'SetInitGame(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetInitGame$ &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(difficulty));

  @JsonKey(ignore: true)
  @override
  $SetInitGame$CopyWith<SetInitGame$> get copyWith =>
      _$SetInitGame$CopyWithImpl<SetInitGame$>(this, _$identity);
}

abstract class SetInitGame$ implements SetInitGame {
  const factory SetInitGame$([int difficulty]) = _$SetInitGame$;

  @override
  int get difficulty;
  @override
  @JsonKey(ignore: true)
  $SetInitGame$CopyWith<SetInitGame$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetPlayerTurnTearOff {
  const _$SetPlayerTurnTearOff();

  SetPlayerTurn$ call(int player) {
    return SetPlayerTurn$(
      player,
    );
  }
}

/// @nodoc
const $SetPlayerTurn = _$SetPlayerTurnTearOff();

/// @nodoc
mixin _$SetPlayerTurn {
  int get player => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetPlayerTurnCopyWith<SetPlayerTurn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPlayerTurnCopyWith<$Res> {
  factory $SetPlayerTurnCopyWith(
          SetPlayerTurn value, $Res Function(SetPlayerTurn) then) =
      _$SetPlayerTurnCopyWithImpl<$Res>;
  $Res call({int player});
}

/// @nodoc
class _$SetPlayerTurnCopyWithImpl<$Res>
    implements $SetPlayerTurnCopyWith<$Res> {
  _$SetPlayerTurnCopyWithImpl(this._value, this._then);

  final SetPlayerTurn _value;
  // ignore: unused_field
  final $Res Function(SetPlayerTurn) _then;

  @override
  $Res call({
    Object? player = freezed,
  }) {
    return _then(_value.copyWith(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetPlayerTurn$CopyWith<$Res>
    implements $SetPlayerTurnCopyWith<$Res> {
  factory $SetPlayerTurn$CopyWith(
          SetPlayerTurn$ value, $Res Function(SetPlayerTurn$) then) =
      _$SetPlayerTurn$CopyWithImpl<$Res>;
  @override
  $Res call({int player});
}

/// @nodoc
class _$SetPlayerTurn$CopyWithImpl<$Res>
    extends _$SetPlayerTurnCopyWithImpl<$Res>
    implements $SetPlayerTurn$CopyWith<$Res> {
  _$SetPlayerTurn$CopyWithImpl(
      SetPlayerTurn$ _value, $Res Function(SetPlayerTurn$) _then)
      : super(_value, (v) => _then(v as SetPlayerTurn$));

  @override
  SetPlayerTurn$ get _value => super._value as SetPlayerTurn$;

  @override
  $Res call({
    Object? player = freezed,
  }) {
    return _then(SetPlayerTurn$(
      player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetPlayerTurn$ implements SetPlayerTurn$ {
  const _$SetPlayerTurn$(this.player);

  @override
  final int player;

  @override
  String toString() {
    return 'SetPlayerTurn(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetPlayerTurn$ &&
            const DeepCollectionEquality().equals(other.player, player));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(player));

  @JsonKey(ignore: true)
  @override
  $SetPlayerTurn$CopyWith<SetPlayerTurn$> get copyWith =>
      _$SetPlayerTurn$CopyWithImpl<SetPlayerTurn$>(this, _$identity);
}

abstract class SetPlayerTurn$ implements SetPlayerTurn {
  const factory SetPlayerTurn$(int player) = _$SetPlayerTurn$;

  @override
  int get player;
  @override
  @JsonKey(ignore: true)
  $SetPlayerTurn$CopyWith<SetPlayerTurn$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DecreaseScoreTearOff {
  const _$DecreaseScoreTearOff();

  DecreaseScore$ call(int points) {
    return DecreaseScore$(
      points,
    );
  }
}

/// @nodoc
const $DecreaseScore = _$DecreaseScoreTearOff();

/// @nodoc
mixin _$DecreaseScore {
  int get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DecreaseScoreCopyWith<DecreaseScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecreaseScoreCopyWith<$Res> {
  factory $DecreaseScoreCopyWith(
          DecreaseScore value, $Res Function(DecreaseScore) then) =
      _$DecreaseScoreCopyWithImpl<$Res>;
  $Res call({int points});
}

/// @nodoc
class _$DecreaseScoreCopyWithImpl<$Res>
    implements $DecreaseScoreCopyWith<$Res> {
  _$DecreaseScoreCopyWithImpl(this._value, this._then);

  final DecreaseScore _value;
  // ignore: unused_field
  final $Res Function(DecreaseScore) _then;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $DecreaseScore$CopyWith<$Res>
    implements $DecreaseScoreCopyWith<$Res> {
  factory $DecreaseScore$CopyWith(
          DecreaseScore$ value, $Res Function(DecreaseScore$) then) =
      _$DecreaseScore$CopyWithImpl<$Res>;
  @override
  $Res call({int points});
}

/// @nodoc
class _$DecreaseScore$CopyWithImpl<$Res>
    extends _$DecreaseScoreCopyWithImpl<$Res>
    implements $DecreaseScore$CopyWith<$Res> {
  _$DecreaseScore$CopyWithImpl(
      DecreaseScore$ _value, $Res Function(DecreaseScore$) _then)
      : super(_value, (v) => _then(v as DecreaseScore$));

  @override
  DecreaseScore$ get _value => super._value as DecreaseScore$;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(DecreaseScore$(
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DecreaseScore$ implements DecreaseScore$ {
  const _$DecreaseScore$(this.points);

  @override
  final int points;

  @override
  String toString() {
    return 'DecreaseScore(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DecreaseScore$ &&
            const DeepCollectionEquality().equals(other.points, points));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(points));

  @JsonKey(ignore: true)
  @override
  $DecreaseScore$CopyWith<DecreaseScore$> get copyWith =>
      _$DecreaseScore$CopyWithImpl<DecreaseScore$>(this, _$identity);
}

abstract class DecreaseScore$ implements DecreaseScore {
  const factory DecreaseScore$(int points) = _$DecreaseScore$;

  @override
  int get points;
  @override
  @JsonKey(ignore: true)
  $DecreaseScore$CopyWith<DecreaseScore$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetTurnTableTearOff {
  const _$SetTurnTableTearOff();

  SetTurnTableStart call(
      {required Tuple2<int, int> piece,
      required int index,
      required BuildContext context,
      required int difficulty}) {
    return SetTurnTableStart(
      piece: piece,
      index: index,
      context: context,
      difficulty: difficulty,
    );
  }

  SetTurnTableSuccessful successful() {
    return const SetTurnTableSuccessful();
  }

  SetTurnTableError error(Object error, StackTrace stackTrace) {
    return SetTurnTableError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $SetTurnTable = _$SetTurnTableTearOff();

/// @nodoc
mixin _$SetTurnTable {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetTurnTableStart value) $default, {
    required TResult Function(SetTurnTableSuccessful value) successful,
    required TResult Function(SetTurnTableError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SetTurnTableStart value)? $default, {
    TResult Function(SetTurnTableSuccessful value)? successful,
    TResult Function(SetTurnTableError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetTurnTableStart value)? $default, {
    TResult Function(SetTurnTableSuccessful value)? successful,
    TResult Function(SetTurnTableError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTurnTableCopyWith<$Res> {
  factory $SetTurnTableCopyWith(
          SetTurnTable value, $Res Function(SetTurnTable) then) =
      _$SetTurnTableCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetTurnTableCopyWithImpl<$Res> implements $SetTurnTableCopyWith<$Res> {
  _$SetTurnTableCopyWithImpl(this._value, this._then);

  final SetTurnTable _value;
  // ignore: unused_field
  final $Res Function(SetTurnTable) _then;
}

/// @nodoc
abstract class $SetTurnTableStartCopyWith<$Res> {
  factory $SetTurnTableStartCopyWith(
          SetTurnTableStart value, $Res Function(SetTurnTableStart) then) =
      _$SetTurnTableStartCopyWithImpl<$Res>;
  $Res call(
      {Tuple2<int, int> piece,
      int index,
      BuildContext context,
      int difficulty});
}

/// @nodoc
class _$SetTurnTableStartCopyWithImpl<$Res>
    extends _$SetTurnTableCopyWithImpl<$Res>
    implements $SetTurnTableStartCopyWith<$Res> {
  _$SetTurnTableStartCopyWithImpl(
      SetTurnTableStart _value, $Res Function(SetTurnTableStart) _then)
      : super(_value, (v) => _then(v as SetTurnTableStart));

  @override
  SetTurnTableStart get _value => super._value as SetTurnTableStart;

  @override
  $Res call({
    Object? piece = freezed,
    Object? index = freezed,
    Object? context = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(SetTurnTableStart(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetTurnTableStart implements SetTurnTableStart {
  const _$SetTurnTableStart(
      {required this.piece,
      required this.index,
      required this.context,
      required this.difficulty});

  @override
  final Tuple2<int, int> piece;
  @override
  final int index;
  @override
  final BuildContext context;
  @override
  final int difficulty;

  @override
  String toString() {
    return 'SetTurnTable(piece: $piece, index: $index, context: $context, difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetTurnTableStart &&
            const DeepCollectionEquality().equals(other.piece, piece) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(piece),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(difficulty));

  @JsonKey(ignore: true)
  @override
  $SetTurnTableStartCopyWith<SetTurnTableStart> get copyWith =>
      _$SetTurnTableStartCopyWithImpl<SetTurnTableStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(piece, index, context, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(piece, index, context, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(piece, index, context, difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetTurnTableStart value) $default, {
    required TResult Function(SetTurnTableSuccessful value) successful,
    required TResult Function(SetTurnTableError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SetTurnTableStart value)? $default, {
    TResult Function(SetTurnTableSuccessful value)? successful,
    TResult Function(SetTurnTableError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetTurnTableStart value)? $default, {
    TResult Function(SetTurnTableSuccessful value)? successful,
    TResult Function(SetTurnTableError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SetTurnTableStart implements SetTurnTable {
  const factory SetTurnTableStart(
      {required Tuple2<int, int> piece,
      required int index,
      required BuildContext context,
      required int difficulty}) = _$SetTurnTableStart;

  Tuple2<int, int> get piece;
  int get index;
  BuildContext get context;
  int get difficulty;
  @JsonKey(ignore: true)
  $SetTurnTableStartCopyWith<SetTurnTableStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTurnTableSuccessfulCopyWith<$Res> {
  factory $SetTurnTableSuccessfulCopyWith(SetTurnTableSuccessful value,
          $Res Function(SetTurnTableSuccessful) then) =
      _$SetTurnTableSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetTurnTableSuccessfulCopyWithImpl<$Res>
    extends _$SetTurnTableCopyWithImpl<$Res>
    implements $SetTurnTableSuccessfulCopyWith<$Res> {
  _$SetTurnTableSuccessfulCopyWithImpl(SetTurnTableSuccessful _value,
      $Res Function(SetTurnTableSuccessful) _then)
      : super(_value, (v) => _then(v as SetTurnTableSuccessful));

  @override
  SetTurnTableSuccessful get _value => super._value as SetTurnTableSuccessful;
}

/// @nodoc

class _$SetTurnTableSuccessful implements SetTurnTableSuccessful {
  const _$SetTurnTableSuccessful();

  @override
  String toString() {
    return 'SetTurnTable.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SetTurnTableSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetTurnTableStart value) $default, {
    required TResult Function(SetTurnTableSuccessful value) successful,
    required TResult Function(SetTurnTableError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SetTurnTableStart value)? $default, {
    TResult Function(SetTurnTableSuccessful value)? successful,
    TResult Function(SetTurnTableError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetTurnTableStart value)? $default, {
    TResult Function(SetTurnTableSuccessful value)? successful,
    TResult Function(SetTurnTableError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SetTurnTableSuccessful implements SetTurnTable {
  const factory SetTurnTableSuccessful() = _$SetTurnTableSuccessful;
}

/// @nodoc
abstract class $SetTurnTableErrorCopyWith<$Res> {
  factory $SetTurnTableErrorCopyWith(
          SetTurnTableError value, $Res Function(SetTurnTableError) then) =
      _$SetTurnTableErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$SetTurnTableErrorCopyWithImpl<$Res>
    extends _$SetTurnTableCopyWithImpl<$Res>
    implements $SetTurnTableErrorCopyWith<$Res> {
  _$SetTurnTableErrorCopyWithImpl(
      SetTurnTableError _value, $Res Function(SetTurnTableError) _then)
      : super(_value, (v) => _then(v as SetTurnTableError));

  @override
  SetTurnTableError get _value => super._value as SetTurnTableError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(SetTurnTableError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$SetTurnTableError implements SetTurnTableError {
  const _$SetTurnTableError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SetTurnTable.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetTurnTableError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $SetTurnTableErrorCopyWith<SetTurnTableError> get copyWith =>
      _$SetTurnTableErrorCopyWithImpl<SetTurnTableError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Tuple2<int, int> piece, int index, BuildContext context,
            int difficulty)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetTurnTableStart value) $default, {
    required TResult Function(SetTurnTableSuccessful value) successful,
    required TResult Function(SetTurnTableError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SetTurnTableStart value)? $default, {
    TResult Function(SetTurnTableSuccessful value)? successful,
    TResult Function(SetTurnTableError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetTurnTableStart value)? $default, {
    TResult Function(SetTurnTableSuccessful value)? successful,
    TResult Function(SetTurnTableError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SetTurnTableError implements SetTurnTable, ErrorAction {
  const factory SetTurnTableError(Object error, StackTrace stackTrace) =
      _$SetTurnTableError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $SetTurnTableErrorCopyWith<SetTurnTableError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddScoreTearOff {
  const _$AddScoreTearOff();

  AddScoreStart start(int score, {String pendingId = _kAddScorePendingId}) {
    return AddScoreStart(
      score,
      pendingId: pendingId,
    );
  }

  AddScoreSuccessful successful([String pendingId = _kAddScorePendingId]) {
    return AddScoreSuccessful(
      pendingId,
    );
  }

  AddScoreError error(Object error, StackTrace stackTrace,
      [String pendingId = _kAddScorePendingId]) {
    return AddScoreError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $AddScore = _$AddScoreTearOff();

/// @nodoc
mixin _$AddScore {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int score, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddScoreStart value) start,
    required TResult Function(AddScoreSuccessful value) successful,
    required TResult Function(AddScoreError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddScoreStart value)? start,
    TResult Function(AddScoreSuccessful value)? successful,
    TResult Function(AddScoreError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddScoreStart value)? start,
    TResult Function(AddScoreSuccessful value)? successful,
    TResult Function(AddScoreError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddScoreCopyWith<AddScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddScoreCopyWith<$Res> {
  factory $AddScoreCopyWith(AddScore value, $Res Function(AddScore) then) =
      _$AddScoreCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$AddScoreCopyWithImpl<$Res> implements $AddScoreCopyWith<$Res> {
  _$AddScoreCopyWithImpl(this._value, this._then);

  final AddScore _value;
  // ignore: unused_field
  final $Res Function(AddScore) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $AddScoreStartCopyWith<$Res> implements $AddScoreCopyWith<$Res> {
  factory $AddScoreStartCopyWith(
          AddScoreStart value, $Res Function(AddScoreStart) then) =
      _$AddScoreStartCopyWithImpl<$Res>;
  @override
  $Res call({int score, String pendingId});
}

/// @nodoc
class _$AddScoreStartCopyWithImpl<$Res> extends _$AddScoreCopyWithImpl<$Res>
    implements $AddScoreStartCopyWith<$Res> {
  _$AddScoreStartCopyWithImpl(
      AddScoreStart _value, $Res Function(AddScoreStart) _then)
      : super(_value, (v) => _then(v as AddScoreStart));

  @override
  AddScoreStart get _value => super._value as AddScoreStart;

  @override
  $Res call({
    Object? score = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(AddScoreStart(
      score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$AddScoreStart implements AddScoreStart {
  const _$AddScoreStart(this.score, {this.pendingId = _kAddScorePendingId});

  @override
  final int score;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'AddScore.start(score: $score, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddScoreStart &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $AddScoreStartCopyWith<AddScoreStart> get copyWith =>
      _$AddScoreStartCopyWithImpl<AddScoreStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return start(score, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int score, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return start?.call(score, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(score, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddScoreStart value) start,
    required TResult Function(AddScoreSuccessful value) successful,
    required TResult Function(AddScoreError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddScoreStart value)? start,
    TResult Function(AddScoreSuccessful value)? successful,
    TResult Function(AddScoreError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddScoreStart value)? start,
    TResult Function(AddScoreSuccessful value)? successful,
    TResult Function(AddScoreError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class AddScoreStart implements AddScore, ActionStart {
  const factory AddScoreStart(int score, {String pendingId}) = _$AddScoreStart;

  int get score;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $AddScoreStartCopyWith<AddScoreStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddScoreSuccessfulCopyWith<$Res>
    implements $AddScoreCopyWith<$Res> {
  factory $AddScoreSuccessfulCopyWith(
          AddScoreSuccessful value, $Res Function(AddScoreSuccessful) then) =
      _$AddScoreSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$AddScoreSuccessfulCopyWithImpl<$Res>
    extends _$AddScoreCopyWithImpl<$Res>
    implements $AddScoreSuccessfulCopyWith<$Res> {
  _$AddScoreSuccessfulCopyWithImpl(
      AddScoreSuccessful _value, $Res Function(AddScoreSuccessful) _then)
      : super(_value, (v) => _then(v as AddScoreSuccessful));

  @override
  AddScoreSuccessful get _value => super._value as AddScoreSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(AddScoreSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$AddScoreSuccessful implements AddScoreSuccessful {
  const _$AddScoreSuccessful([this.pendingId = _kAddScorePendingId]);

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'AddScore.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddScoreSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $AddScoreSuccessfulCopyWith<AddScoreSuccessful> get copyWith =>
      _$AddScoreSuccessfulCopyWithImpl<AddScoreSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int score, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddScoreStart value) start,
    required TResult Function(AddScoreSuccessful value) successful,
    required TResult Function(AddScoreError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddScoreStart value)? start,
    TResult Function(AddScoreSuccessful value)? successful,
    TResult Function(AddScoreError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddScoreStart value)? start,
    TResult Function(AddScoreSuccessful value)? successful,
    TResult Function(AddScoreError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddScoreSuccessful implements AddScore, ActionDone {
  const factory AddScoreSuccessful([String pendingId]) = _$AddScoreSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $AddScoreSuccessfulCopyWith<AddScoreSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddScoreErrorCopyWith<$Res> implements $AddScoreCopyWith<$Res> {
  factory $AddScoreErrorCopyWith(
          AddScoreError value, $Res Function(AddScoreError) then) =
      _$AddScoreErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$AddScoreErrorCopyWithImpl<$Res> extends _$AddScoreCopyWithImpl<$Res>
    implements $AddScoreErrorCopyWith<$Res> {
  _$AddScoreErrorCopyWithImpl(
      AddScoreError _value, $Res Function(AddScoreError) _then)
      : super(_value, (v) => _then(v as AddScoreError));

  @override
  AddScoreError get _value => super._value as AddScoreError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(AddScoreError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$AddScoreError implements AddScoreError {
  const _$AddScoreError(this.error, this.stackTrace,
      [this.pendingId = _kAddScorePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'AddScore.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddScoreError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $AddScoreErrorCopyWith<AddScoreError> get copyWith =>
      _$AddScoreErrorCopyWithImpl<AddScoreError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int score, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddScoreStart value) start,
    required TResult Function(AddScoreSuccessful value) successful,
    required TResult Function(AddScoreError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddScoreStart value)? start,
    TResult Function(AddScoreSuccessful value)? successful,
    TResult Function(AddScoreError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddScoreStart value)? start,
    TResult Function(AddScoreSuccessful value)? successful,
    TResult Function(AddScoreError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddScoreError implements AddScore, ActionDone, ErrorAction {
  const factory AddScoreError(Object error, StackTrace stackTrace,
      [String pendingId]) = _$AddScoreError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $AddScoreErrorCopyWith<AddScoreError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListenForScoresTearOff {
  const _$ListenForScoresTearOff();

  ListenForScoresStart start() {
    return const ListenForScoresStart();
  }

  ListenForScoresDone done() {
    return const ListenForScoresDone();
  }

  OnScoresEvent event(List<Score> scores) {
    return OnScoresEvent(
      scores,
    );
  }

  _ListenForScoresError error(Object error, StackTrace stackTrace) {
    return _ListenForScoresError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $ListenForScores = _$ListenForScoresTearOff();

/// @nodoc
mixin _$ListenForScores {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Score> scores) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForScoresStart value) start,
    required TResult Function(ListenForScoresDone value) done,
    required TResult Function(OnScoresEvent value) event,
    required TResult Function(_ListenForScoresError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenForScoresCopyWith<$Res> {
  factory $ListenForScoresCopyWith(
          ListenForScores value, $Res Function(ListenForScores) then) =
      _$ListenForScoresCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForScoresCopyWithImpl<$Res>
    implements $ListenForScoresCopyWith<$Res> {
  _$ListenForScoresCopyWithImpl(this._value, this._then);

  final ListenForScores _value;
  // ignore: unused_field
  final $Res Function(ListenForScores) _then;
}

/// @nodoc
abstract class $ListenForScoresStartCopyWith<$Res> {
  factory $ListenForScoresStartCopyWith(ListenForScoresStart value,
          $Res Function(ListenForScoresStart) then) =
      _$ListenForScoresStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForScoresStartCopyWithImpl<$Res>
    extends _$ListenForScoresCopyWithImpl<$Res>
    implements $ListenForScoresStartCopyWith<$Res> {
  _$ListenForScoresStartCopyWithImpl(
      ListenForScoresStart _value, $Res Function(ListenForScoresStart) _then)
      : super(_value, (v) => _then(v as ListenForScoresStart));

  @override
  ListenForScoresStart get _value => super._value as ListenForScoresStart;
}

/// @nodoc

class _$ListenForScoresStart implements ListenForScoresStart {
  const _$ListenForScoresStart();

  @override
  String toString() {
    return 'ListenForScores.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListenForScoresStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Score> scores) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForScoresStart value) start,
    required TResult Function(ListenForScoresDone value) done,
    required TResult Function(OnScoresEvent value) event,
    required TResult Function(_ListenForScoresError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class ListenForScoresStart implements ListenForScores {
  const factory ListenForScoresStart() = _$ListenForScoresStart;
}

/// @nodoc
abstract class $ListenForScoresDoneCopyWith<$Res> {
  factory $ListenForScoresDoneCopyWith(
          ListenForScoresDone value, $Res Function(ListenForScoresDone) then) =
      _$ListenForScoresDoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForScoresDoneCopyWithImpl<$Res>
    extends _$ListenForScoresCopyWithImpl<$Res>
    implements $ListenForScoresDoneCopyWith<$Res> {
  _$ListenForScoresDoneCopyWithImpl(
      ListenForScoresDone _value, $Res Function(ListenForScoresDone) _then)
      : super(_value, (v) => _then(v as ListenForScoresDone));

  @override
  ListenForScoresDone get _value => super._value as ListenForScoresDone;
}

/// @nodoc

class _$ListenForScoresDone implements ListenForScoresDone {
  const _$ListenForScoresDone();

  @override
  String toString() {
    return 'ListenForScores.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListenForScoresDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Score> scores) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForScoresStart value) start,
    required TResult Function(ListenForScoresDone value) done,
    required TResult Function(OnScoresEvent value) event,
    required TResult Function(_ListenForScoresError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ListenForScoresDone implements ListenForScores {
  const factory ListenForScoresDone() = _$ListenForScoresDone;
}

/// @nodoc
abstract class $OnScoresEventCopyWith<$Res> {
  factory $OnScoresEventCopyWith(
          OnScoresEvent value, $Res Function(OnScoresEvent) then) =
      _$OnScoresEventCopyWithImpl<$Res>;
  $Res call({List<Score> scores});
}

/// @nodoc
class _$OnScoresEventCopyWithImpl<$Res>
    extends _$ListenForScoresCopyWithImpl<$Res>
    implements $OnScoresEventCopyWith<$Res> {
  _$OnScoresEventCopyWithImpl(
      OnScoresEvent _value, $Res Function(OnScoresEvent) _then)
      : super(_value, (v) => _then(v as OnScoresEvent));

  @override
  OnScoresEvent get _value => super._value as OnScoresEvent;

  @override
  $Res call({
    Object? scores = freezed,
  }) {
    return _then(OnScoresEvent(
      scores == freezed
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
    ));
  }
}

/// @nodoc

class _$OnScoresEvent implements OnScoresEvent {
  const _$OnScoresEvent(this.scores);

  @override
  final List<Score> scores;

  @override
  String toString() {
    return 'ListenForScores.event(scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnScoresEvent &&
            const DeepCollectionEquality().equals(other.scores, scores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(scores));

  @JsonKey(ignore: true)
  @override
  $OnScoresEventCopyWith<OnScoresEvent> get copyWith =>
      _$OnScoresEventCopyWithImpl<OnScoresEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Score> scores) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return event(scores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return event?.call(scores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(scores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForScoresStart value) start,
    required TResult Function(ListenForScoresDone value) done,
    required TResult Function(OnScoresEvent value) event,
    required TResult Function(_ListenForScoresError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class OnScoresEvent implements ListenForScores {
  const factory OnScoresEvent(List<Score> scores) = _$OnScoresEvent;

  List<Score> get scores;
  @JsonKey(ignore: true)
  $OnScoresEventCopyWith<OnScoresEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ListenForScoresErrorCopyWith<$Res> {
  factory _$ListenForScoresErrorCopyWith(_ListenForScoresError value,
          $Res Function(_ListenForScoresError) then) =
      __$ListenForScoresErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$ListenForScoresErrorCopyWithImpl<$Res>
    extends _$ListenForScoresCopyWithImpl<$Res>
    implements _$ListenForScoresErrorCopyWith<$Res> {
  __$ListenForScoresErrorCopyWithImpl(
      _ListenForScoresError _value, $Res Function(_ListenForScoresError) _then)
      : super(_value, (v) => _then(v as _ListenForScoresError));

  @override
  _ListenForScoresError get _value => super._value as _ListenForScoresError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_ListenForScoresError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$_ListenForScoresError implements _ListenForScoresError {
  const _$_ListenForScoresError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ListenForScores.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListenForScoresError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$ListenForScoresErrorCopyWith<_ListenForScoresError> get copyWith =>
      __$ListenForScoresErrorCopyWithImpl<_ListenForScoresError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Score> scores) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Score> scores)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForScoresStart value) start,
    required TResult Function(ListenForScoresDone value) done,
    required TResult Function(OnScoresEvent value) event,
    required TResult Function(_ListenForScoresError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForScoresStart value)? start,
    TResult Function(ListenForScoresDone value)? done,
    TResult Function(OnScoresEvent value)? event,
    TResult Function(_ListenForScoresError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListenForScoresError implements ListenForScores, ErrorAction {
  const factory _ListenForScoresError(Object error, StackTrace stackTrace) =
      _$_ListenForScoresError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$ListenForScoresErrorCopyWith<_ListenForScoresError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetUserTearOff {
  const _$GetUserTearOff();

  GetUserStart call(String uid) {
    return GetUserStart(
      uid,
    );
  }

  GetUserSuccessful successful(AppUser user) {
    return GetUserSuccessful(
      user,
    );
  }

  GetUserError error(Object error, StackTrace stackTrace) {
    return GetUserError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetUser = _$GetUserTearOff();

/// @nodoc
mixin _$GetUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUserStart value) $default, {
    required TResult Function(GetUserSuccessful value) successful,
    required TResult Function(GetUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetUserStart value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUserStart value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserCopyWith<$Res> {
  factory $GetUserCopyWith(GetUser value, $Res Function(GetUser) then) =
      _$GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserCopyWithImpl<$Res> implements $GetUserCopyWith<$Res> {
  _$GetUserCopyWithImpl(this._value, this._then);

  final GetUser _value;
  // ignore: unused_field
  final $Res Function(GetUser) _then;
}

/// @nodoc
abstract class $GetUserStartCopyWith<$Res> {
  factory $GetUserStartCopyWith(
          GetUserStart value, $Res Function(GetUserStart) then) =
      _$GetUserStartCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$GetUserStartCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserStartCopyWith<$Res> {
  _$GetUserStartCopyWithImpl(
      GetUserStart _value, $Res Function(GetUserStart) _then)
      : super(_value, (v) => _then(v as GetUserStart));

  @override
  GetUserStart get _value => super._value as GetUserStart;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(GetUserStart(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserStart implements GetUserStart {
  const _$GetUserStart(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'GetUser(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserStart &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  $GetUserStartCopyWith<GetUserStart> get copyWith =>
      _$GetUserStartCopyWithImpl<GetUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUserStart value) $default, {
    required TResult Function(GetUserSuccessful value) successful,
    required TResult Function(GetUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetUserStart value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUserStart value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUserStart implements GetUser {
  const factory GetUserStart(String uid) = _$GetUserStart;

  String get uid;
  @JsonKey(ignore: true)
  $GetUserStartCopyWith<GetUserStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserSuccessfulCopyWith<$Res> {
  factory $GetUserSuccessfulCopyWith(
          GetUserSuccessful value, $Res Function(GetUserSuccessful) then) =
      _$GetUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$GetUserSuccessfulCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserSuccessfulCopyWith<$Res> {
  _$GetUserSuccessfulCopyWithImpl(
      GetUserSuccessful _value, $Res Function(GetUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetUserSuccessful));

  @override
  GetUserSuccessful get _value => super._value as GetUserSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(GetUserSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$GetUserSuccessful implements GetUserSuccessful {
  const _$GetUserSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'GetUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserSuccessful &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $GetUserSuccessfulCopyWith<GetUserSuccessful> get copyWith =>
      _$GetUserSuccessfulCopyWithImpl<GetUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUserStart value) $default, {
    required TResult Function(GetUserSuccessful value) successful,
    required TResult Function(GetUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetUserStart value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUserStart value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUserSuccessful implements GetUser {
  const factory GetUserSuccessful(AppUser user) = _$GetUserSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  $GetUserSuccessfulCopyWith<GetUserSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserErrorCopyWith<$Res> {
  factory $GetUserErrorCopyWith(
          GetUserError value, $Res Function(GetUserError) then) =
      _$GetUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetUserErrorCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserErrorCopyWith<$Res> {
  _$GetUserErrorCopyWithImpl(
      GetUserError _value, $Res Function(GetUserError) _then)
      : super(_value, (v) => _then(v as GetUserError));

  @override
  GetUserError get _value => super._value as GetUserError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetUserError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$GetUserError implements GetUserError {
  const _$GetUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $GetUserErrorCopyWith<GetUserError> get copyWith =>
      _$GetUserErrorCopyWithImpl<GetUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUserStart value) $default, {
    required TResult Function(GetUserSuccessful value) successful,
    required TResult Function(GetUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetUserStart value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUserStart value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUserError implements GetUser, ErrorAction {
  const factory GetUserError(Object error, StackTrace stackTrace) =
      _$GetUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetUserErrorCopyWith<GetUserError> get copyWith =>
      throw _privateConstructorUsedError;
}

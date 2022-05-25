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
  factory $GetCurrentUserCopyWith(GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res> implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(this._value, this._then);

  final GetCurrentUser _value;
  // ignore: unused_field
  final $Res Function(GetCurrentUser) _then;
}

/// @nodoc
abstract class $GetCurrentUserStartCopyWith<$Res> {
  factory $GetCurrentUserStartCopyWith(GetCurrentUserStart value, $Res Function(GetCurrentUserStart) then) =
      _$GetCurrentUserStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserStartCopyWithImpl<$Res> extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserStartCopyWith<$Res> {
  _$GetCurrentUserStartCopyWithImpl(GetCurrentUserStart _value, $Res Function(GetCurrentUserStart) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is GetCurrentUserStart);
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
  factory $GetCurrentUserSuccessfulCopyWith(
          GetCurrentUserSuccessful value, $Res Function(GetCurrentUserSuccessful) then) =
      _$GetCurrentUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GetCurrentUserSuccessfulCopyWithImpl<$Res> extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserSuccessfulCopyWith<$Res> {
  _$GetCurrentUserSuccessfulCopyWithImpl(GetCurrentUserSuccessful _value, $Res Function(GetCurrentUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetCurrentUserSuccessful));

  @override
  GetCurrentUserSuccessful get _value => super._value as GetCurrentUserSuccessful;

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
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $GetCurrentUserSuccessfulCopyWith<GetCurrentUserSuccessful> get copyWith =>
      _$GetCurrentUserSuccessfulCopyWithImpl<GetCurrentUserSuccessful>(this, _$identity);

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
  const factory GetCurrentUserSuccessful(AppUser? user) = _$GetCurrentUserSuccessful;

  AppUser? get user;
  @JsonKey(ignore: true)
  $GetCurrentUserSuccessfulCopyWith<GetCurrentUserSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentUserErrorCopyWith<$Res> {
  factory $GetCurrentUserErrorCopyWith(GetCurrentUserError value, $Res Function(GetCurrentUserError) then) =
      _$GetCurrentUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetCurrentUserErrorCopyWithImpl<$Res> extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserErrorCopyWith<$Res> {
  _$GetCurrentUserErrorCopyWithImpl(GetCurrentUserError _value, $Res Function(GetCurrentUserError) _then)
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
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

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
  const factory GetCurrentUserError(Object error, StackTrace stackTrace) = _$GetCurrentUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetCurrentUserErrorCopyWith<GetCurrentUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

  LoginStart call({required String email, required String password, required ActionResult onResult}) {
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
    TResult Function(String email, String password, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)? $default, {
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
  factory $LoginCopyWith(Login value, $Res Function(Login) then) = _$LoginCopyWithImpl<$Res>;
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
  factory $LoginStartCopyWith(LoginStart value, $Res Function(LoginStart) then) = _$LoginStartCopyWithImpl<$Res>;
  $Res call({String email, String password, ActionResult onResult});
}

/// @nodoc
class _$LoginStartCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res> implements $LoginStartCopyWith<$Res> {
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
  const _$LoginStart({required this.email, required this.password, required this.onResult});

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
            (identical(other.onResult, onResult) || other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(email), const DeepCollectionEquality().hash(password), onResult);

  @JsonKey(ignore: true)
  @override
  $LoginStartCopyWith<LoginStart> get copyWith => _$LoginStartCopyWithImpl<LoginStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)? $default, {
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
  const factory LoginStart({required String email, required String password, required ActionResult onResult}) =
      _$LoginStart;

  String get email;
  String get password;
  ActionResult get onResult;
  @JsonKey(ignore: true)
  $LoginStartCopyWith<LoginStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res> implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
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
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)? $default, {
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
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(LoginError value, $Res Function(LoginError) then) = _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res> implements $LoginErrorCopyWith<$Res> {
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
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $LoginErrorCopyWith<LoginError> get copyWith => _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)? $default, {
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
  $LoginErrorCopyWith<LoginError> get copyWith => throw _privateConstructorUsedError;
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
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult)?
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
  factory $CreateUserCopyWith(CreateUser value, $Res Function(CreateUser) then) = _$CreateUserCopyWithImpl<$Res>;
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
  factory $CreateUserStartCopyWith(CreateUserStart value, $Res Function(CreateUserStart) then) =
      _$CreateUserStartCopyWithImpl<$Res>;
  $Res call({String email, String password, String username, String photoUrl, ActionResult onResult});
}

/// @nodoc
class _$CreateUserStartCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res>
    implements $CreateUserStartCopyWith<$Res> {
  _$CreateUserStartCopyWithImpl(CreateUserStart _value, $Res Function(CreateUserStart) _then)
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
            (identical(other.onResult, onResult) || other.onResult == onResult));
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
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, username, photoUrl, onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, username, photoUrl, onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult)?
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
  $CreateUserStartCopyWith<CreateUserStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserSuccessfulCopyWith<$Res> {
  factory $CreateUserSuccessfulCopyWith(CreateUserSuccessful value, $Res Function(CreateUserSuccessful) then) =
      _$CreateUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$CreateUserSuccessfulCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res>
    implements $CreateUserSuccessfulCopyWith<$Res> {
  _$CreateUserSuccessfulCopyWithImpl(CreateUserSuccessful _value, $Res Function(CreateUserSuccessful) _then)
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
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $CreateUserSuccessfulCopyWith<CreateUserSuccessful> get copyWith =>
      _$CreateUserSuccessfulCopyWithImpl<CreateUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult)?
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
  $CreateUserSuccessfulCopyWith<CreateUserSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserErrorCopyWith<$Res> {
  factory $CreateUserErrorCopyWith(CreateUserError value, $Res Function(CreateUserError) then) =
      _$CreateUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$CreateUserErrorCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res>
    implements $CreateUserErrorCopyWith<$Res> {
  _$CreateUserErrorCopyWithImpl(CreateUserError _value, $Res Function(CreateUserError) _then)
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
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $CreateUserErrorCopyWith<CreateUserError> get copyWith =>
      _$CreateUserErrorCopyWithImpl<CreateUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username, String photoUrl, ActionResult onResult)?
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
  const factory CreateUserError(Object error, StackTrace stackTrace) = _$CreateUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $CreateUserErrorCopyWith<CreateUserError> get copyWith => throw _privateConstructorUsedError;
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
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) = _$LogoutCopyWithImpl<$Res>;
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
  factory $LogoutStartCopyWith(LogoutStart value, $Res Function(LogoutStart) then) = _$LogoutStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutStartCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res> implements $LogoutStartCopyWith<$Res> {
  _$LogoutStartCopyWithImpl(LogoutStart _value, $Res Function(LogoutStart) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is LogoutStart);
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
  factory $LogoutSuccessfulCopyWith(LogoutSuccessful value, $Res Function(LogoutSuccessful) then) =
      _$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutSuccessfulCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutSuccessfulCopyWith<$Res> {
  _$LogoutSuccessfulCopyWithImpl(LogoutSuccessful _value, $Res Function(LogoutSuccessful) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is LogoutSuccessful);
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
  factory $LogoutErrorCopyWith(LogoutError value, $Res Function(LogoutError) then) = _$LogoutErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$LogoutErrorCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res> implements $LogoutErrorCopyWith<$Res> {
  _$LogoutErrorCopyWithImpl(LogoutError _value, $Res Function(LogoutError) _then)
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
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $LogoutErrorCopyWith<LogoutError> get copyWith => _$LogoutErrorCopyWithImpl<LogoutError>(this, _$identity);

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
  const factory LogoutError(Object error, StackTrace stackTrace) = _$LogoutError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $LogoutErrorCopyWith<LogoutError> get copyWith => throw _privateConstructorUsedError;
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
  factory $GetProfilePhotosCopyWith(GetProfilePhotos value, $Res Function(GetProfilePhotos) then) =
      _$GetProfilePhotosCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProfilePhotosCopyWithImpl<$Res> implements $GetProfilePhotosCopyWith<$Res> {
  _$GetProfilePhotosCopyWithImpl(this._value, this._then);

  final GetProfilePhotos _value;
  // ignore: unused_field
  final $Res Function(GetProfilePhotos) _then;
}

/// @nodoc
abstract class $GetProfilePhotosStartCopyWith<$Res> {
  factory $GetProfilePhotosStartCopyWith(GetProfilePhotosStart value, $Res Function(GetProfilePhotosStart) then) =
      _$GetProfilePhotosStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProfilePhotosStartCopyWithImpl<$Res> extends _$GetProfilePhotosCopyWithImpl<$Res>
    implements $GetProfilePhotosStartCopyWith<$Res> {
  _$GetProfilePhotosStartCopyWithImpl(GetProfilePhotosStart _value, $Res Function(GetProfilePhotosStart) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is GetProfilePhotosStart);
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
  factory $GetProfilePhotosSuccessfulCopyWith(
          GetProfilePhotosSuccessful value, $Res Function(GetProfilePhotosSuccessful) then) =
      _$GetProfilePhotosSuccessfulCopyWithImpl<$Res>;
  $Res call({List<String> photoUrls});
}

/// @nodoc
class _$GetProfilePhotosSuccessfulCopyWithImpl<$Res> extends _$GetProfilePhotosCopyWithImpl<$Res>
    implements $GetProfilePhotosSuccessfulCopyWith<$Res> {
  _$GetProfilePhotosSuccessfulCopyWithImpl(
      GetProfilePhotosSuccessful _value, $Res Function(GetProfilePhotosSuccessful) _then)
      : super(_value, (v) => _then(v as GetProfilePhotosSuccessful));

  @override
  GetProfilePhotosSuccessful get _value => super._value as GetProfilePhotosSuccessful;

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
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(photoUrls));

  @JsonKey(ignore: true)
  @override
  $GetProfilePhotosSuccessfulCopyWith<GetProfilePhotosSuccessful> get copyWith =>
      _$GetProfilePhotosSuccessfulCopyWithImpl<GetProfilePhotosSuccessful>(this, _$identity);

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
  const factory GetProfilePhotosSuccessful(List<String> photoUrls) = _$GetProfilePhotosSuccessful;

  List<String> get photoUrls;
  @JsonKey(ignore: true)
  $GetProfilePhotosSuccessfulCopyWith<GetProfilePhotosSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfilePhotosErrorCopyWith<$Res> {
  factory $GetProfilePhotosErrorCopyWith(GetProfilePhotosError value, $Res Function(GetProfilePhotosError) then) =
      _$GetProfilePhotosErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetProfilePhotosErrorCopyWithImpl<$Res> extends _$GetProfilePhotosCopyWithImpl<$Res>
    implements $GetProfilePhotosErrorCopyWith<$Res> {
  _$GetProfilePhotosErrorCopyWithImpl(GetProfilePhotosError _value, $Res Function(GetProfilePhotosError) _then)
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
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $GetProfilePhotosErrorCopyWith<GetProfilePhotosError> get copyWith =>
      _$GetProfilePhotosErrorCopyWithImpl<GetProfilePhotosError>(this, _$identity);

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
  const factory GetProfilePhotosError(Object error, StackTrace stackTrace) = _$GetProfilePhotosError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetProfilePhotosErrorCopyWith<GetProfilePhotosError> get copyWith => throw _privateConstructorUsedError;
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
  $SetProfilePhotoCopyWith<SetProfilePhoto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetProfilePhotoCopyWith<$Res> {
  factory $SetProfilePhotoCopyWith(SetProfilePhoto value, $Res Function(SetProfilePhoto) then) =
      _$SetProfilePhotoCopyWithImpl<$Res>;
  $Res call({int selectedProfilePhoto});
}

/// @nodoc
class _$SetProfilePhotoCopyWithImpl<$Res> implements $SetProfilePhotoCopyWith<$Res> {
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
abstract class $SetProfilePhoto$CopyWith<$Res> implements $SetProfilePhotoCopyWith<$Res> {
  factory $SetProfilePhoto$CopyWith(SetProfilePhoto$ value, $Res Function(SetProfilePhoto$) then) =
      _$SetProfilePhoto$CopyWithImpl<$Res>;
  @override
  $Res call({int selectedProfilePhoto});
}

/// @nodoc
class _$SetProfilePhoto$CopyWithImpl<$Res> extends _$SetProfilePhotoCopyWithImpl<$Res>
    implements $SetProfilePhoto$CopyWith<$Res> {
  _$SetProfilePhoto$CopyWithImpl(SetProfilePhoto$ _value, $Res Function(SetProfilePhoto$) _then)
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
            const DeepCollectionEquality().equals(other.selectedProfilePhoto, selectedProfilePhoto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(selectedProfilePhoto));

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
  $SetProfilePhoto$CopyWith<SetProfilePhoto$> get copyWith => throw _privateConstructorUsedError;
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
  $SetDifficultyCopyWith<SetDifficulty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDifficultyCopyWith<$Res> {
  factory $SetDifficultyCopyWith(SetDifficulty value, $Res Function(SetDifficulty) then) =
      _$SetDifficultyCopyWithImpl<$Res>;
  $Res call({int difficulty});
}

/// @nodoc
class _$SetDifficultyCopyWithImpl<$Res> implements $SetDifficultyCopyWith<$Res> {
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
abstract class $SetDifficulty$CopyWith<$Res> implements $SetDifficultyCopyWith<$Res> {
  factory $SetDifficulty$CopyWith(SetDifficulty$ value, $Res Function(SetDifficulty$) then) =
      _$SetDifficulty$CopyWithImpl<$Res>;
  @override
  $Res call({int difficulty});
}

/// @nodoc
class _$SetDifficulty$CopyWithImpl<$Res> extends _$SetDifficultyCopyWithImpl<$Res>
    implements $SetDifficulty$CopyWith<$Res> {
  _$SetDifficulty$CopyWithImpl(SetDifficulty$ _value, $Res Function(SetDifficulty$) _then)
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
            const DeepCollectionEquality().equals(other.difficulty, difficulty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(difficulty));

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
  $SetDifficulty$CopyWith<SetDifficulty$> get copyWith => throw _privateConstructorUsedError;
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
  $SetDifficultyColorCopyWith<SetDifficultyColor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDifficultyColorCopyWith<$Res> {
  factory $SetDifficultyColorCopyWith(SetDifficultyColor value, $Res Function(SetDifficultyColor) then) =
      _$SetDifficultyColorCopyWithImpl<$Res>;
  $Res call({int position});
}

/// @nodoc
class _$SetDifficultyColorCopyWithImpl<$Res> implements $SetDifficultyColorCopyWith<$Res> {
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
abstract class $SetDifficultyColor$CopyWith<$Res> implements $SetDifficultyColorCopyWith<$Res> {
  factory $SetDifficultyColor$CopyWith(SetDifficultyColor$ value, $Res Function(SetDifficultyColor$) then) =
      _$SetDifficultyColor$CopyWithImpl<$Res>;
  @override
  $Res call({int position});
}

/// @nodoc
class _$SetDifficultyColor$CopyWithImpl<$Res> extends _$SetDifficultyColorCopyWithImpl<$Res>
    implements $SetDifficultyColor$CopyWith<$Res> {
  _$SetDifficultyColor$CopyWithImpl(SetDifficultyColor$ _value, $Res Function(SetDifficultyColor$) _then)
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
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

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
  $SetDifficultyColor$CopyWith<SetDifficultyColor$> get copyWith => throw _privateConstructorUsedError;
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
  $SetSelectedPieceCopyWith<SetSelectedPiece> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedPieceCopyWith<$Res> {
  factory $SetSelectedPieceCopyWith(SetSelectedPiece value, $Res Function(SetSelectedPiece) then) =
      _$SetSelectedPieceCopyWithImpl<$Res>;
  $Res call({Tuple2<int, int> piece});
}

/// @nodoc
class _$SetSelectedPieceCopyWithImpl<$Res> implements $SetSelectedPieceCopyWith<$Res> {
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
abstract class $SetSelectedPiece$CopyWith<$Res> implements $SetSelectedPieceCopyWith<$Res> {
  factory $SetSelectedPiece$CopyWith(SetSelectedPiece$ value, $Res Function(SetSelectedPiece$) then) =
      _$SetSelectedPiece$CopyWithImpl<$Res>;
  @override
  $Res call({Tuple2<int, int> piece});
}

/// @nodoc
class _$SetSelectedPiece$CopyWithImpl<$Res> extends _$SetSelectedPieceCopyWithImpl<$Res>
    implements $SetSelectedPiece$CopyWith<$Res> {
  _$SetSelectedPiece$CopyWithImpl(SetSelectedPiece$ _value, $Res Function(SetSelectedPiece$) _then)
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
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(piece));

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
  $SetSelectedPiece$CopyWith<SetSelectedPiece$> get copyWith => throw _privateConstructorUsedError;
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
  $SetPieceToTableCopyWith<SetPieceToTable> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPieceToTableCopyWith<$Res> {
  factory $SetPieceToTableCopyWith(SetPieceToTable value, $Res Function(SetPieceToTable) then) =
      _$SetPieceToTableCopyWithImpl<$Res>;
  $Res call({Tuple2<int, int> piece, int position});
}

/// @nodoc
class _$SetPieceToTableCopyWithImpl<$Res> implements $SetPieceToTableCopyWith<$Res> {
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
abstract class $SetPieceToTable$CopyWith<$Res> implements $SetPieceToTableCopyWith<$Res> {
  factory $SetPieceToTable$CopyWith(SetPieceToTable$ value, $Res Function(SetPieceToTable$) then) =
      _$SetPieceToTable$CopyWithImpl<$Res>;
  @override
  $Res call({Tuple2<int, int> piece, int position});
}

/// @nodoc
class _$SetPieceToTable$CopyWithImpl<$Res> extends _$SetPieceToTableCopyWithImpl<$Res>
    implements $SetPieceToTable$CopyWith<$Res> {
  _$SetPieceToTable$CopyWithImpl(SetPieceToTable$ _value, $Res Function(SetPieceToTable$) _then)
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
      runtimeType, const DeepCollectionEquality().hash(piece), const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  $SetPieceToTable$CopyWith<SetPieceToTable$> get copyWith =>
      _$SetPieceToTable$CopyWithImpl<SetPieceToTable$>(this, _$identity);
}

abstract class SetPieceToTable$ implements SetPieceToTable {
  const factory SetPieceToTable$(Tuple2<int, int> piece, int position) = _$SetPieceToTable$;

  @override
  Tuple2<int, int> get piece;
  @override
  int get position;
  @override
  @JsonKey(ignore: true)
  $SetPieceToTable$CopyWith<SetPieceToTable$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetAvailablePlayerOnePieceTearOff {
  const _$SetAvailablePlayerOnePieceTearOff();

  SetAvailablePlayerOnePiece$ call(int piece) {
    return SetAvailablePlayerOnePiece$(
      piece,
    );
  }
}

/// @nodoc
const $SetAvailablePlayerOnePiece = _$SetAvailablePlayerOnePieceTearOff();

/// @nodoc
mixin _$SetAvailablePlayerOnePiece {
  int get piece => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetAvailablePlayerOnePieceCopyWith<SetAvailablePlayerOnePiece> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAvailablePlayerOnePieceCopyWith<$Res> {
  factory $SetAvailablePlayerOnePieceCopyWith(
          SetAvailablePlayerOnePiece value, $Res Function(SetAvailablePlayerOnePiece) then) =
      _$SetAvailablePlayerOnePieceCopyWithImpl<$Res>;
  $Res call({int piece});
}

/// @nodoc
class _$SetAvailablePlayerOnePieceCopyWithImpl<$Res> implements $SetAvailablePlayerOnePieceCopyWith<$Res> {
  _$SetAvailablePlayerOnePieceCopyWithImpl(this._value, this._then);

  final SetAvailablePlayerOnePiece _value;
  // ignore: unused_field
  final $Res Function(SetAvailablePlayerOnePiece) _then;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetAvailablePlayerOnePiece$CopyWith<$Res> implements $SetAvailablePlayerOnePieceCopyWith<$Res> {
  factory $SetAvailablePlayerOnePiece$CopyWith(
          SetAvailablePlayerOnePiece$ value, $Res Function(SetAvailablePlayerOnePiece$) then) =
      _$SetAvailablePlayerOnePiece$CopyWithImpl<$Res>;
  @override
  $Res call({int piece});
}

/// @nodoc
class _$SetAvailablePlayerOnePiece$CopyWithImpl<$Res> extends _$SetAvailablePlayerOnePieceCopyWithImpl<$Res>
    implements $SetAvailablePlayerOnePiece$CopyWith<$Res> {
  _$SetAvailablePlayerOnePiece$CopyWithImpl(
      SetAvailablePlayerOnePiece$ _value, $Res Function(SetAvailablePlayerOnePiece$) _then)
      : super(_value, (v) => _then(v as SetAvailablePlayerOnePiece$));

  @override
  SetAvailablePlayerOnePiece$ get _value => super._value as SetAvailablePlayerOnePiece$;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(SetAvailablePlayerOnePiece$(
      piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetAvailablePlayerOnePiece$ implements SetAvailablePlayerOnePiece$ {
  const _$SetAvailablePlayerOnePiece$(this.piece);

  @override
  final int piece;

  @override
  String toString() {
    return 'SetAvailablePlayerOnePiece(piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetAvailablePlayerOnePiece$ &&
            const DeepCollectionEquality().equals(other.piece, piece));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(piece));

  @JsonKey(ignore: true)
  @override
  $SetAvailablePlayerOnePiece$CopyWith<SetAvailablePlayerOnePiece$> get copyWith =>
      _$SetAvailablePlayerOnePiece$CopyWithImpl<SetAvailablePlayerOnePiece$>(this, _$identity);
}

abstract class SetAvailablePlayerOnePiece$ implements SetAvailablePlayerOnePiece {
  const factory SetAvailablePlayerOnePiece$(int piece) = _$SetAvailablePlayerOnePiece$;

  @override
  int get piece;
  @override
  @JsonKey(ignore: true)
  $SetAvailablePlayerOnePiece$CopyWith<SetAvailablePlayerOnePiece$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetAvailablePlayerTwoPieceTearOff {
  const _$SetAvailablePlayerTwoPieceTearOff();

  SetAvailablePlayerTwoPiece$ call(int piece) {
    return SetAvailablePlayerTwoPiece$(
      piece,
    );
  }
}

/// @nodoc
const $SetAvailablePlayerTwoPiece = _$SetAvailablePlayerTwoPieceTearOff();

/// @nodoc
mixin _$SetAvailablePlayerTwoPiece {
  int get piece => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetAvailablePlayerTwoPieceCopyWith<SetAvailablePlayerTwoPiece> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAvailablePlayerTwoPieceCopyWith<$Res> {
  factory $SetAvailablePlayerTwoPieceCopyWith(
          SetAvailablePlayerTwoPiece value, $Res Function(SetAvailablePlayerTwoPiece) then) =
      _$SetAvailablePlayerTwoPieceCopyWithImpl<$Res>;
  $Res call({int piece});
}

/// @nodoc
class _$SetAvailablePlayerTwoPieceCopyWithImpl<$Res> implements $SetAvailablePlayerTwoPieceCopyWith<$Res> {
  _$SetAvailablePlayerTwoPieceCopyWithImpl(this._value, this._then);

  final SetAvailablePlayerTwoPiece _value;
  // ignore: unused_field
  final $Res Function(SetAvailablePlayerTwoPiece) _then;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetAvailablePlayerTwoPiece$CopyWith<$Res> implements $SetAvailablePlayerTwoPieceCopyWith<$Res> {
  factory $SetAvailablePlayerTwoPiece$CopyWith(
          SetAvailablePlayerTwoPiece$ value, $Res Function(SetAvailablePlayerTwoPiece$) then) =
      _$SetAvailablePlayerTwoPiece$CopyWithImpl<$Res>;
  @override
  $Res call({int piece});
}

/// @nodoc
class _$SetAvailablePlayerTwoPiece$CopyWithImpl<$Res> extends _$SetAvailablePlayerTwoPieceCopyWithImpl<$Res>
    implements $SetAvailablePlayerTwoPiece$CopyWith<$Res> {
  _$SetAvailablePlayerTwoPiece$CopyWithImpl(
      SetAvailablePlayerTwoPiece$ _value, $Res Function(SetAvailablePlayerTwoPiece$) _then)
      : super(_value, (v) => _then(v as SetAvailablePlayerTwoPiece$));

  @override
  SetAvailablePlayerTwoPiece$ get _value => super._value as SetAvailablePlayerTwoPiece$;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(SetAvailablePlayerTwoPiece$(
      piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetAvailablePlayerTwoPiece$ implements SetAvailablePlayerTwoPiece$ {
  const _$SetAvailablePlayerTwoPiece$(this.piece);

  @override
  final int piece;

  @override
  String toString() {
    return 'SetAvailablePlayerTwoPiece(piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetAvailablePlayerTwoPiece$ &&
            const DeepCollectionEquality().equals(other.piece, piece));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(piece));

  @JsonKey(ignore: true)
  @override
  $SetAvailablePlayerTwoPiece$CopyWith<SetAvailablePlayerTwoPiece$> get copyWith =>
      _$SetAvailablePlayerTwoPiece$CopyWithImpl<SetAvailablePlayerTwoPiece$>(this, _$identity);
}

abstract class SetAvailablePlayerTwoPiece$ implements SetAvailablePlayerTwoPiece {
  const factory SetAvailablePlayerTwoPiece$(int piece) = _$SetAvailablePlayerTwoPiece$;

  @override
  int get piece;
  @override
  @JsonKey(ignore: true)
  $SetAvailablePlayerTwoPiece$CopyWith<SetAvailablePlayerTwoPiece$> get copyWith => throw _privateConstructorUsedError;
}

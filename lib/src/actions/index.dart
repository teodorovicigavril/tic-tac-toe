import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tuple/tuple.dart';

part 'get_current_user.dart';

part 'login.dart';

part 'index.freezed.dart';

part 'create_user.dart';

part 'logout.dart';

part 'get_profile_photos.dart';

part 'set.dart';

part 'set_turn_table.dart';

part 'add_score.dart';

part 'listen_for_scores.dart';

part 'get_user.dart';

part 'remove_score.dart';

part 'delete_profile.dart';

part 'verify_password.dart';

part 'update_profile.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

abstract class UserAction implements AppAction {
  AppUser? get user;
}

typedef ActionResult = void Function(AppAction action);

abstract class PendingAction {
  String get pendingId;
}

abstract class ActionStart implements PendingAction {}

abstract class ActionDone implements PendingAction {}

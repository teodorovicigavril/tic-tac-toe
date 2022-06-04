part of 'index.dart';

@freezed
class VerifyPassword with _$VerifyPassword implements AppAction {
  const factory VerifyPassword({required String password, required ActionResult onResult}) = VerifyPasswordStart;

  const factory VerifyPassword.successful() = VerifyPasswordSuccessful;

  @Implements<ErrorAction>()
  const factory VerifyPassword.error(Object error, StackTrace stackTrace) = VerifyPasswordError;
}

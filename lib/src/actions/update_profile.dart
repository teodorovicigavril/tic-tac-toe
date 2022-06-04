part of 'index.dart';

@freezed
class UpdateProfile with _$UpdateProfile implements AppAction {
  const factory UpdateProfile({
    required String? email,
    required String? password,
    required String? username,
    required String? photoUrl,
    required ActionResult onResult,
  }) = UpdateProfileStart;

  const factory UpdateProfile.successful(AppUser user) = UpdateProfileSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateProfile.error(Object error, StackTrace stackTrace) = UpdateProfileError;
}

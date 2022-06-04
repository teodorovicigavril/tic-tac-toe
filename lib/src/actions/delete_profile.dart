part of 'index.dart';

@freezed
class DeleteProfile with _$DeleteProfile implements AppAction {
  const factory DeleteProfile({required String uid, required ActionResult onResult}) = DeleteProfileStart;

  const factory DeleteProfile.successful() = DeleteProfileSuccessful;

  @Implements<ErrorAction>()
  const factory DeleteProfile.error(Object error, StackTrace stackTrace) = DeleteProfileError;
}

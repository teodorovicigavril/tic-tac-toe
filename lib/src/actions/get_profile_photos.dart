part of 'index.dart';

@freezed
class GetProfilePhotos with _$GetProfilePhotos implements AppAction {
  const factory GetProfilePhotos({required bool alreadyLoggedIn}) = GetProfilePhotosStart;

  const factory GetProfilePhotos.successful(List<String> photoUrls) = GetProfilePhotosSuccessful;

  @Implements<ErrorAction>()
  const factory GetProfilePhotos.error(Object error, StackTrace stackTrace) = GetProfilePhotosError;
}

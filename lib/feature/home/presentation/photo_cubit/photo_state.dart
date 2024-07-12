part of 'photo_cubit.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState.loading({
    @Default(false) canGoNext,
  }) = PhotoStateLoading;
  const factory PhotoState.content({
    @Default([]) List<ImageModel> images,
    @Default([]) List<int> firstIncludes,
    @Default([]) List<ImageModel> searchedImages,
     @Default('') String searchValue,
  }) = PhotoStateContent;
}

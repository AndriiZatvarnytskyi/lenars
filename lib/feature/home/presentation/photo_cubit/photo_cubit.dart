import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lenars/core/data/models/image_model.dart';
import 'package:lenars/core/data/remote/api_services.dart';

part 'photo_cubit.freezed.dart';
part 'photo_state.dart';

class PhotoCubit extends Cubit<PhotoState> {
  PhotoCubit() : super(const PhotoState.loading());

  final ApiService _api = ApiService();

  Future<void> init() async {
    loadData();
  }

  Future<void> loadData() async {
    try {
      await _api.getImages().then((images) {
        List<int> firstIncludes = getFirstInclude(images);
        emit(
          PhotoState.content(
            images: images,
            searchedImages: images,
            firstIncludes: firstIncludes,
          ),
        );
      });
    } catch (e) {
      log(e.toString());
    }
  }

  List<int> getFirstInclude(List<ImageModel> images) {
    Map<String, int> firstLetterIndices = {};

    for (int i = 0; i < images.length; i++) {
      String firstLetter = images[i].photographer[0].toUpperCase();
      if (!firstLetterIndices.containsKey(firstLetter)) {
        firstLetterIndices[firstLetter] = i;
      }
    }

    List<int> indices = firstLetterIndices.values.toList();
    indices.sort();

    return indices;
  }

  void onSearchValueChanged(String value) {
    if (state is PhotoStateContent) {
      final currentState = state as PhotoStateContent;
      List<ImageModel> searchedImages =
          searchByPhotographer(currentState.images, value);
      emit(
        currentState.copyWith(
          searchValue: value,
          searchedImages: searchedImages,
        ),
      );
    }
  }

  List<ImageModel> searchByPhotographer(List<ImageModel> images, String query) {
    String searchQuery = query.toLowerCase();

    return images.where((image) {
      return image.photographer
          .split(' ')
          .any((word) => word.toLowerCase().startsWith(searchQuery));
    }).toList();
  }
}

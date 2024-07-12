// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic canGoNext) loading,
    required TResult Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)
        content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic canGoNext)? loading,
    TResult? Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)?
        content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic canGoNext)? loading,
    TResult Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)?
        content,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhotoStateLoading value) loading,
    required TResult Function(PhotoStateContent value) content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhotoStateLoading value)? loading,
    TResult? Function(PhotoStateContent value)? content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhotoStateLoading value)? loading,
    TResult Function(PhotoStateContent value)? content,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res, PhotoState>;
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res, $Val extends PhotoState>
    implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PhotoStateLoadingImplCopyWith<$Res> {
  factory _$$PhotoStateLoadingImplCopyWith(_$PhotoStateLoadingImpl value,
          $Res Function(_$PhotoStateLoadingImpl) then) =
      __$$PhotoStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic canGoNext});
}

/// @nodoc
class __$$PhotoStateLoadingImplCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$PhotoStateLoadingImpl>
    implements _$$PhotoStateLoadingImplCopyWith<$Res> {
  __$$PhotoStateLoadingImplCopyWithImpl(_$PhotoStateLoadingImpl _value,
      $Res Function(_$PhotoStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canGoNext = freezed,
  }) {
    return _then(_$PhotoStateLoadingImpl(
      canGoNext: freezed == canGoNext ? _value.canGoNext! : canGoNext,
    ));
  }
}

/// @nodoc

class _$PhotoStateLoadingImpl implements PhotoStateLoading {
  const _$PhotoStateLoadingImpl({this.canGoNext = false});

  @override
  @JsonKey()
  final dynamic canGoNext;

  @override
  String toString() {
    return 'PhotoState.loading(canGoNext: $canGoNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoStateLoadingImpl &&
            const DeepCollectionEquality().equals(other.canGoNext, canGoNext));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(canGoNext));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoStateLoadingImplCopyWith<_$PhotoStateLoadingImpl> get copyWith =>
      __$$PhotoStateLoadingImplCopyWithImpl<_$PhotoStateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic canGoNext) loading,
    required TResult Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)
        content,
  }) {
    return loading(canGoNext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic canGoNext)? loading,
    TResult? Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)?
        content,
  }) {
    return loading?.call(canGoNext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic canGoNext)? loading,
    TResult Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)?
        content,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(canGoNext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhotoStateLoading value) loading,
    required TResult Function(PhotoStateContent value) content,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhotoStateLoading value)? loading,
    TResult? Function(PhotoStateContent value)? content,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhotoStateLoading value)? loading,
    TResult Function(PhotoStateContent value)? content,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PhotoStateLoading implements PhotoState {
  const factory PhotoStateLoading({final dynamic canGoNext}) =
      _$PhotoStateLoadingImpl;

  dynamic get canGoNext;
  @JsonKey(ignore: true)
  _$$PhotoStateLoadingImplCopyWith<_$PhotoStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoStateContentImplCopyWith<$Res> {
  factory _$$PhotoStateContentImplCopyWith(_$PhotoStateContentImpl value,
          $Res Function(_$PhotoStateContentImpl) then) =
      __$$PhotoStateContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ImageModel> images,
      List<int> firstIncludes,
      List<ImageModel> searchedImages,
      String searchValue});
}

/// @nodoc
class __$$PhotoStateContentImplCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$PhotoStateContentImpl>
    implements _$$PhotoStateContentImplCopyWith<$Res> {
  __$$PhotoStateContentImplCopyWithImpl(_$PhotoStateContentImpl _value,
      $Res Function(_$PhotoStateContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? firstIncludes = null,
    Object? searchedImages = null,
    Object? searchValue = null,
  }) {
    return _then(_$PhotoStateContentImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      firstIncludes: null == firstIncludes
          ? _value._firstIncludes
          : firstIncludes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      searchedImages: null == searchedImages
          ? _value._searchedImages
          : searchedImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhotoStateContentImpl implements PhotoStateContent {
  const _$PhotoStateContentImpl(
      {final List<ImageModel> images = const [],
      final List<int> firstIncludes = const [],
      final List<ImageModel> searchedImages = const [],
      this.searchValue = ''})
      : _images = images,
        _firstIncludes = firstIncludes,
        _searchedImages = searchedImages;

  final List<ImageModel> _images;
  @override
  @JsonKey()
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<int> _firstIncludes;
  @override
  @JsonKey()
  List<int> get firstIncludes {
    if (_firstIncludes is EqualUnmodifiableListView) return _firstIncludes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_firstIncludes);
  }

  final List<ImageModel> _searchedImages;
  @override
  @JsonKey()
  List<ImageModel> get searchedImages {
    if (_searchedImages is EqualUnmodifiableListView) return _searchedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedImages);
  }

  @override
  @JsonKey()
  final String searchValue;

  @override
  String toString() {
    return 'PhotoState.content(images: $images, firstIncludes: $firstIncludes, searchedImages: $searchedImages, searchValue: $searchValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoStateContentImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._firstIncludes, _firstIncludes) &&
            const DeepCollectionEquality()
                .equals(other._searchedImages, _searchedImages) &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_firstIncludes),
      const DeepCollectionEquality().hash(_searchedImages),
      searchValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoStateContentImplCopyWith<_$PhotoStateContentImpl> get copyWith =>
      __$$PhotoStateContentImplCopyWithImpl<_$PhotoStateContentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic canGoNext) loading,
    required TResult Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)
        content,
  }) {
    return content(images, firstIncludes, searchedImages, searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic canGoNext)? loading,
    TResult? Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)?
        content,
  }) {
    return content?.call(images, firstIncludes, searchedImages, searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic canGoNext)? loading,
    TResult Function(List<ImageModel> images, List<int> firstIncludes,
            List<ImageModel> searchedImages, String searchValue)?
        content,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(images, firstIncludes, searchedImages, searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhotoStateLoading value) loading,
    required TResult Function(PhotoStateContent value) content,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhotoStateLoading value)? loading,
    TResult? Function(PhotoStateContent value)? content,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhotoStateLoading value)? loading,
    TResult Function(PhotoStateContent value)? content,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class PhotoStateContent implements PhotoState {
  const factory PhotoStateContent(
      {final List<ImageModel> images,
      final List<int> firstIncludes,
      final List<ImageModel> searchedImages,
      final String searchValue}) = _$PhotoStateContentImpl;

  List<ImageModel> get images;
  List<int> get firstIncludes;
  List<ImageModel> get searchedImages;
  String get searchValue;
  @JsonKey(ignore: true)
  _$$PhotoStateContentImplCopyWith<_$PhotoStateContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

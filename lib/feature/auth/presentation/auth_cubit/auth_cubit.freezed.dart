// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic canGoNext) loading,
    required TResult Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)
        content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic canGoNext)? loading,
    TResult? Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)?
        content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic canGoNext)? loading,
    TResult Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)?
        content,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateContent value) content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateContent value)? content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateContent value)? content,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic canGoNext});
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canGoNext = freezed,
  }) {
    return _then(_$AuthStateLoadingImpl(
      canGoNext: freezed == canGoNext ? _value.canGoNext! : canGoNext,
    ));
  }
}

/// @nodoc

class _$AuthStateLoadingImpl implements AuthStateLoading {
  const _$AuthStateLoadingImpl({this.canGoNext = false});

  @override
  @JsonKey()
  final dynamic canGoNext;

  @override
  String toString() {
    return 'AuthState.loading(canGoNext: $canGoNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateLoadingImpl &&
            const DeepCollectionEquality().equals(other.canGoNext, canGoNext));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(canGoNext));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateLoadingImplCopyWith<_$AuthStateLoadingImpl> get copyWith =>
      __$$AuthStateLoadingImplCopyWithImpl<_$AuthStateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic canGoNext) loading,
    required TResult Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)
        content,
  }) {
    return loading(canGoNext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic canGoNext)? loading,
    TResult? Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)?
        content,
  }) {
    return loading?.call(canGoNext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic canGoNext)? loading,
    TResult Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)?
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
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateContent value) content,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateContent value)? content,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateContent value)? content,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading({final dynamic canGoNext}) =
      _$AuthStateLoadingImpl;

  dynamic get canGoNext;
  @JsonKey(ignore: true)
  _$$AuthStateLoadingImplCopyWith<_$AuthStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateContentImplCopyWith<$Res> {
  factory _$$AuthStateContentImplCopyWith(_$AuthStateContentImpl value,
          $Res Function(_$AuthStateContentImpl) then) =
      __$$AuthStateContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      bool isEmailValid,
      bool isPasswordValid,
      bool serverError});
}

/// @nodoc
class __$$AuthStateContentImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateContentImpl>
    implements _$$AuthStateContentImplCopyWith<$Res> {
  __$$AuthStateContentImplCopyWithImpl(_$AuthStateContentImpl _value,
      $Res Function(_$AuthStateContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isEmailValid = null,
    Object? isPasswordValid = null,
    Object? serverError = null,
  }) {
    return _then(_$AuthStateContentImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: null == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateContentImpl implements AuthStateContent {
  const _$AuthStateContentImpl(
      {this.email = '',
      this.password = '',
      this.isEmailValid = true,
      this.isPasswordValid = true,
      this.serverError = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isEmailValid;
  @override
  @JsonKey()
  final bool isPasswordValid;
  @override
  @JsonKey()
  final bool serverError;

  @override
  String toString() {
    return 'AuthState.content(email: $email, password: $password, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, serverError: $serverError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateContentImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid) &&
            (identical(other.serverError, serverError) ||
                other.serverError == serverError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, isEmailValid, isPasswordValid, serverError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateContentImplCopyWith<_$AuthStateContentImpl> get copyWith =>
      __$$AuthStateContentImplCopyWithImpl<_$AuthStateContentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic canGoNext) loading,
    required TResult Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)
        content,
  }) {
    return content(email, password, isEmailValid, isPasswordValid, serverError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic canGoNext)? loading,
    TResult? Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)?
        content,
  }) {
    return content?.call(
        email, password, isEmailValid, isPasswordValid, serverError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic canGoNext)? loading,
    TResult Function(String email, String password, bool isEmailValid,
            bool isPasswordValid, bool serverError)?
        content,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(
          email, password, isEmailValid, isPasswordValid, serverError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateContent value) content,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateContent value)? content,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateContent value)? content,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class AuthStateContent implements AuthState {
  const factory AuthStateContent(
      {final String email,
      final String password,
      final bool isEmailValid,
      final bool isPasswordValid,
      final bool serverError}) = _$AuthStateContentImpl;

  String get email;
  String get password;
  bool get isEmailValid;
  bool get isPasswordValid;
  bool get serverError;
  @JsonKey(ignore: true)
  _$$AuthStateContentImplCopyWith<_$AuthStateContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

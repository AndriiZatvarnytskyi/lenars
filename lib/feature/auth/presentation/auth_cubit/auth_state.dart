part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading({
    @Default(false) canGoNext,
  }) = AuthStateLoading;
  const factory AuthState.content({
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool isEmailValid,
    @Default(true) bool isPasswordValid,
    @Default(false) bool serverError,
  }) = AuthStateContent;
}

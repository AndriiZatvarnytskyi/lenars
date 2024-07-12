
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lenars/core/data/remote/api_services.dart';
import 'package:lenars/core/ui/utils/extensions.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.loading());

  Future<void> init() async {
    emit(const AuthState.content());
  }

  final ApiService _api = ApiService();

  Future<void> registration() async {
    checkEmailState();
    checkPasswordState();
    if (state is AuthStateContent) {
      final currentState = state as AuthStateContent;
      if (currentState.isEmailValid && currentState.isPasswordValid) {
        emit(const AuthState.loading());
        try {
          await _api
              .registerUser(
                  email: currentState.email, password: currentState.password)
              .then((value) => {
                    if (value)
                      {
                        emit(const AuthState.loading(canGoNext: true)),
                      }
                    else
                      {
                        emit(const AuthState.content(
                          serverError: true,
                          email: '',
                          password: '',
                        )),
                      }
                  });
        } catch (e) {
          emit(const AuthState.content(
            serverError: true,
            email: '',
            password: '',
          ));
        }
      }
    }
  }

  void onEmailChanged(String value) {
    if (state is AuthStateContent) {
      final currentState = state as AuthStateContent;
      emit(
        currentState.copyWith(
          email: value,
          isEmailValid: true,
        ),
      );
    }
  }

  void onPasswordChanged(String value) {
    if (state is AuthStateContent) {
      final currentState = state as AuthStateContent;
      emit(
        currentState.copyWith(
          password: value,
          isPasswordValid: true,
        ),
      );
    }
  }

  Future<void> checkEmailState() async {
    final state = this.state;
    if (state is AuthStateContent) {
      final String email = state.email.trim();
      emit(
        state.copyWith(isEmailValid: email.isEmailValid()),
      );
    }
  }

  Future<void> checkPasswordState() async {
    final state = this.state;
    if (state is AuthStateContent) {
      final String password = state.password.trim();
      emit(
        state.copyWith(isPasswordValid: password.isPasswordValid()),
      );
    }
  }

  void closeServerError() {
    if (state is AuthStateContent) {
      final currentState = state as AuthStateContent;
      emit(
        currentState.copyWith(
          serverError: false,
        ),
      );
    }
  }
}

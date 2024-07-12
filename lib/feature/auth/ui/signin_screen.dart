import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenars/feature/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lenars/feature/auth/ui/widget/login_button.dart';
import 'package:lenars/feature/home/ui/home_screen.dart';

import '../../../core/ui/resources/app_text.dart';
import '../../../core/ui/widgets/app_text_form_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()..init(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180, bottom: 72),
                child: Center(
                    child: Text(
                  'Sign in',
                  style: AppTextStyles(context).head1Regular,
                )),
              ),
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthStateLoading && state.canGoNext) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return Opacity(
                    opacity: state is AuthStateLoading ? 0.5 : 1,
                    child: Column(
                      children: [
                        AppFormField(
                          label: 'Email',
                          errorText:
                              state is AuthStateContent && !state.isEmailValid
                                  ? 'Email is incorrect'
                                  : null,
                          onChanged: context.read<AuthCubit>().onEmailChanged,
                          onEditingComplete:
                              context.read<AuthCubit>().checkEmailState,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AppFormField(
                          label: 'Password',
                          errorText: state is AuthStateContent &&
                                  !state.isPasswordValid
                              ? 'Password is incorrect'
                              : null,
                          onChanged:
                              context.read<AuthCubit>().onPasswordChanged,
                          onEditingComplete:
                              context.read<AuthCubit>().checkPasswordState,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                },
              ),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return LoginButton(
                    onTap: context.read<AuthCubit>().registration,
                    child: state is AuthStateContent
                        ? Text(
                            'Log in',
                            style: AppTextStyles(context).body2Medium.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary),
                          )
                        : Center(
                            child: SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                strokeAlign: BorderSide.strokeAlignInside,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ),
                  );
                },
              ),
              const Spacer(),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  if (state is AuthStateContent && state.serverError) {
                    return Container(
                      padding: const EdgeInsets.only(left: 16),
                      margin: const EdgeInsets.only(bottom: 24),
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Theme.of(context).colorScheme.inverseSurface),
                      child: Row(
                        children: [
                          Text(
                            'Server error. Please, try again',
                            style: AppTextStyles(context).body2Regular.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onInverseSurface),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed:
                                context.read<AuthCubit>().closeServerError,
                            icon: Icon(
                              Icons.clear,
                              size: 24,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onInverseSurface,
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

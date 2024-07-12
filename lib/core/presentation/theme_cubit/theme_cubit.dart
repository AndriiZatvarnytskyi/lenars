import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lenars/core/ui/resources/app_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeData> {
  ThemeCubit() : super(AppThemes.light());

  void theme() {
    emit(state == AppThemes.light() ? AppThemes.dark() : AppThemes.light());
  }

  @override
  ThemeData? fromJson(Map<String, dynamic> json) {
    try {
      if (json['light'] as bool) return AppThemes.light();
      if (json['dark'] as bool) return AppThemes.dark();
      return AppThemes.light();
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, bool>? toJson(ThemeData state) {
    try {
      return {
        'light': state == AppThemes.light(),
        'dark': state == AppThemes.dark(),
      };
    } catch (_) {
      return null;
    }
  }
}

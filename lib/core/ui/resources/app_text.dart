import 'package:flutter/material.dart';

import '../../../../gen/fonts.gen.dart';

class AppTextStyles {
  AppTextStyles(this.context);
  final BuildContext context;

  TextStyle get head1Regular => const TextStyle(
        fontFamily: FontFamily.roboto,
        fontSize: 32,
        fontWeight: FontWeight.w400,
      );

  TextStyle get head2Regular => const TextStyle(
        fontFamily: FontFamily.roboto,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      );

  TextStyle get body1Medium => const TextStyle(
        fontFamily: FontFamily.roboto,
        fontSize: 16,
        height: 1.2,
        fontWeight: FontWeight.w500,
      );

  TextStyle get body1Regular => body2Medium.copyWith(
        fontWeight: FontWeight.w400,
      );

  TextStyle get body2Medium => const TextStyle(
        fontFamily: FontFamily.roboto,
        fontSize: 14,
        height: 1.2,
        fontWeight: FontWeight.w500,
      );

  TextStyle get body2Regular => body2Medium.copyWith(
        fontWeight: FontWeight.w400,
      );

  TextStyle get body3Regular => const TextStyle(
        fontFamily: FontFamily.roboto,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
}

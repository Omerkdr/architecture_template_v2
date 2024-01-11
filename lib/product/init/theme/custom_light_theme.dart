import 'package:architecture_template_v2/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_template_v2/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        // fontFamily: GoogleFonts.roboto().fontFamily,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}

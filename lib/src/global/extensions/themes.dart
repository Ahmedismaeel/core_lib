import 'package:core/src/global/extensions/colors.dart';
import 'package:core/src/global/extensions/style.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _texTheme,
      // Matches manifest.json colors and background color.
      primaryColor: AppColor.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle:
            Style.pMediumSemiBold.copyWith(color: AppColor.neutral.shade900),
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.neutral.shade900),
      ),
      tabBarTheme: TabBarTheme(
          labelColor: AppColor.neutral.shade500,
          labelStyle: Style.pXSmall
              .copyWith(color: AppColor.neutral.shade500), // color for text
          indicator: UnderlineTabIndicator(
              insets: EdgeInsets.symmetric(horizontal: 10),
              borderSide: BorderSide(color: AppColor.primary, width: 4.0))),

      iconTheme: IconThemeData(color: AppColor.neutral.shade900),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        // contentTextStyle: _textTheme.subtitle1!.apply(color: _darkFillColor),
      ),
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: AppColor.primary,
    primaryContainer: Color(0xFF9e1718),
    secondary: AppColor.primary,
    secondaryContainer: Color(0xFFFAFBFB),
    background: Colors.white,
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: AppColor.error,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: AppColor.primary,
    onSurface: AppColor.primary,
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFF8383),
    primaryContainer: Color(0xFF1CDEC9),
    secondary: Color(0xFF4D1F7C),
    secondaryContainer: Color(0xFF451B6F),
    background: Color(0xFF241E30),
    surface: Color(0xFF1F1929),
    onBackground: Color(0x0DFFFFFF),
    // White with 0.05 opacity
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  // static final TextTheme _textTheme = TextTheme(
  //   headline4: GoogleFonts.montserrat(fontWeight: _bold, fontSize: 20.0),
  //   caption: GoogleFonts.oswald(fontWeight: _semiBold, fontSize: 16.0),
  //   headline5: GoogleFonts.oswald(fontWeight: _medium, fontSize: 16.0),
  //   subtitle1: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 16.0),
  //   overline: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 12.0),
  //   bodyText1: GoogleFonts.montserrat(fontWeight: _regular, fontSize: 14.0),
  //   subtitle2: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 14.0),
  //   bodyText2: GoogleFonts.montserrat(fontWeight: _regular, fontSize: 16.0),
  //   headline6: GoogleFonts.montserrat(fontWeight: _bold, fontSize: 16.0),
  //   button: GoogleFonts.montserrat(fontWeight: _semiBold, fontSize: 14.0),
  // );

  static const TextTheme _texTheme = TextTheme(
    headline1: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 36.0),
    headline2: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 32.0),
    headline3: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 28.0),
    headline4: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 24.0),
    headline5: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 20.0),
    headline6: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 18.0),
    subtitle1: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 18.0),
    subtitle2: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 16.0),
    bodyText1: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 14.0),
    bodyText2: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 12.0),
    caption: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 10.0),
    button: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 12.0),
    overline: TextStyle(height: 1.2, fontWeight: _regular, fontSize: 12.0),
  );
}

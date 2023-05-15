import 'package:flutter/material.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

class AppColor {
  static const MaterialColor pglight2 =
      MaterialColor(_pglight2PrimaryValue, <int, Color>{
    50: Color(0xFFFDFDFE),
    100: Color(0xFFFBFBFD),
    200: Color(0xFFF9F9FB),
    300: Color(0xFFF6F6F9),
    400: Color(0xFFF4F4F8),
    500: Color(_pglight2PrimaryValue),
    600: Color(0xFFF0F0F6),
    700: Color(0xFFEEEEF5),
    800: Color(0xFFECECF3),
    900: Color(0xFFE8E8F1),
  });
  static const int _pglight2PrimaryValue = 0xFFF2F2F7;

  static const MaterialColor pglight2Accent =
      MaterialColor(_pglight2AccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_pglight2AccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _pglight2AccentValue = 0xFFFFFFFF;

  static const MaterialColor pgdark1 =
      MaterialColor(_pgdark1PrimaryValue, <int, Color>{
    50: Color(0xFFE4E4E4),
    100: Color(0xFFBBBBBC),
    200: Color(0xFF8E8E8F),
    300: Color(0xFF606062),
    400: Color(0xFF3E3E40),
    500: Color(_pgdark1PrimaryValue),
    600: Color(0xFF19191A),
    700: Color(0xFF141416),
    800: Color(0xFF111112),
    900: Color(0xFF09090A),
  });
  static const int _pgdark1PrimaryValue = 0xFF1C1C1E;

  static const MaterialColor pgdark1Accent =
      MaterialColor(_pgdark1AccentValue, <int, Color>{
    100: Color(0xFFE07171),
    200: Color(_pgdark1AccentValue),
    400: Color(0xFFEB0000),
    700: Color(0xFFD10000),
  });
  static const int _pgdark1AccentValue = 0xFFD74747;

  static const MaterialColor pglight =
      MaterialColor(_pglightPrimaryValue, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(_pglightPrimaryValue),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  });
  static const int _pglightPrimaryValue = 0xFFFFFFFF;

  static const MaterialColor pglightAccent =
      MaterialColor(_pglightAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_pglightAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _pglightAccentValue = 0xFFFFFFFF;

  static const MaterialColor pgdark =
      MaterialColor(_pgdarkPrimaryValue, <int, Color>{
    50: Color(0xFFE5F4F3),
    100: Color(0xFFBEE4E1),
    200: Color(0xFF93D3CD),
    300: Color(0xFF67C1B8),
    400: Color(0xFF47B3A9),
    500: Color(_pgdarkPrimaryValue),
    600: Color(0xFF229E92),
    700: Color(0xFF1C9588),
    800: Color(0xFF178B7E),
    900: Color(0xFF0D7B6C),
  });
  static const int _pgdarkPrimaryValue = 0xFF26A69A;

  static const MaterialColor pgdarkAccent =
      MaterialColor(_pgdarkAccentValue, <int, Color>{
    100: Color(0xFFADFFF3),
    200: Color(_pgdarkAccentValue),
    400: Color(0xFF47FFE4),
    700: Color(0xFF2DFFE0),
  });
  static const int _pgdarkAccentValue = 0xFF7AFFEC;
  static const MaterialColor primary =
      MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFE3EBEC),
    100: Color(0xFFBACCD0),
    200: Color(0xFF8CAAB1),
    300: Color(0xFF5D8891),
    400: Color(0xFF3B6F7A),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFF154E5A),
    700: Color(0xFF114450),
    800: Color(0xFF0E3B46),
    900: Color(0xFF082A34),
  });
  static const int _primaryPrimaryValue = 0xFF185562;

  static const MaterialColor primaryAccent =
      MaterialColor(_primaryAccentValue, <int, Color>{
    100: Color(0xFF6EDAFF),
    200: Color(_primaryAccentValue),
    400: Color(0xFF08BFFF),
    700: Color(0xFF00B0ED),
  });
  static const int _primaryAccentValue = 0xFF3BCDFF;
  static const MaterialColor secondary =
      MaterialColor(_secondaryPrimaryValue, <int, Color>{
    50: Color(0xFFFFEEE1),
    100: Color(0xFFFFD4B3),
    200: Color(0xFFFFB880),
    300: Color(0xFFFF9B4D),
    400: Color(0xFFFF8527),
    500: Color(_secondaryPrimaryValue),
    600: Color(0xFFFF6801),
    700: Color(0xFFFF5D01),
    800: Color(0xFFFF5301),
    900: Color(0xFFFF4100),
  });
  static const int _secondaryPrimaryValue = 0xFFFF7001;

  static const MaterialColor secondaryAccent =
      MaterialColor(_secondaryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_secondaryAccentValue),
    400: Color(0xFFFFCCBF),
    700: Color(0xFFFFB7A6),
  });
  static const int _secondaryAccentValue = 0xFFFFF5F2;

  static const MaterialColor success =
      MaterialColor(_successPrimaryValue, <int, Color>{
    50: Color(0xFFE4F8EC),
    100: Color(0xFFBDEECF),
    200: Color(0xFF91E2AF),
    300: Color(0xFF64D68E),
    400: Color(0xFF43CE76),
    500: Color(_successPrimaryValue),
    600: Color(0xFF1EBF56),
    700: Color(0xFF19B84C),
    800: Color(0xFF14B042),
    900: Color(0xFF0CA331),
  });
  static const int _successPrimaryValue = 0xFF22C55E;

  static const MaterialColor successAccent =
      MaterialColor(_successAccentValue, <int, Color>{
    100: Color(0xFFD1FFDA),
    200: Color(_successAccentValue),
    400: Color(0xFF6BFF89),
    700: Color(0xFF51FF75),
  });
  static const int _successAccentValue = 0xFF9EFFB2;

  static const MaterialColor warning =
      MaterialColor(_warningPrimaryValue, <int, Color>{
    50: Color(0xFFFEF3E2),
    100: Color(0xFFFCE2B6),
    200: Color(0xFFFACF85),
    300: Color(0xFFF8BB54),
    400: Color(0xFFF7AD30),
    500: Color(_warningPrimaryValue),
    600: Color(0xFFF4960A),
    700: Color(0xFFF28C08),
    800: Color(0xFFF08206),
    900: Color(0xFFEE7003),
  });
  static const int _warningPrimaryValue = 0xFFF59E0B;

  static const MaterialColor warningAccent =
      MaterialColor(_warningAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_warningAccentValue),
    400: Color(0xFFFFD0AE),
    700: Color(0xFFFFC195),
  });
  static const int _warningAccentValue = 0xFFFFEEE1;

  static const MaterialColor error =
      MaterialColor(_errorPrimaryValue, <int, Color>{
    50: Color(0xFFFDE9E9),
    100: Color(0xFFFAC7C7),
    200: Color(0xFFF7A2A2),
    300: Color(0xFFF47C7C),
    400: Color(0xFFF16060),
    500: Color(_errorPrimaryValue),
    600: Color(0xFFED3E3E),
    700: Color(0xFFEB3535),
    800: Color(0xFFE82D2D),
    900: Color(0xFFE41F1F),
  });
  static const int _errorPrimaryValue = 0xFFEF4444;

  static const MaterialColor errorAccent =
      MaterialColor(_errorAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_errorAccentValue),
    400: Color(0xFFFFB4B4),
    700: Color(0xFFFF9B9B),
  });
  static const int _errorAccentValue = 0xFFFFE7E7;

  static const MaterialColor neutral =
      MaterialColor(_neutralPrimaryValue, <int, Color>{
    50: Color(0xFFECEDEF),
    100: Color(0xFFD0D2D6),
    200: Color(0xFFB0B4BB),
    300: Color(0xFF90959F),
    400: Color(0xFF797F8B),
    500: Color(_neutralPrimaryValue),
    600: Color(0xFF59606E),
    700: Color(0xFF4F5563),
    800: Color(0xFF454B59),
    900: Color(0xFF333A46),
  });
  static const int _neutralPrimaryValue = 0xFF616876;

  static const MaterialColor neutralAccent =
      MaterialColor(_neutralAccentValue, <int, Color>{
    100: Color(0xFF99BBFF),
    200: Color(_neutralAccentValue),
    400: Color(0xFF3377FF),
    700: Color(0xFF1A66FF),
  });
  static const int _neutralAccentValue = 0xFF6699FF;

  static const MaterialColor background =
      MaterialColor(_backgroundPrimaryValue, <int, Color>{
    50: Color(0xFFE4E4E4),
    100: Color(0xFFBBBBBC),
    200: Color(0xFF8E8E8F),
    300: Color(0xFF606062),
    400: Color(0xFF3E3E40),
    500: Color(_backgroundPrimaryValue),
    600: Color(0xFF19191A),
    700: Color(0xFF141416),
    800: Color(0xFF111112),
    900: Color(0xFF09090A),
  });
  static const int _backgroundPrimaryValue = 0xFF1C1C1E;

  static const MaterialColor backgroundAccent =
      MaterialColor(_backgroundAccentValue, <int, Color>{
    100: Color(0xFFE07171),
    200: Color(_backgroundAccentValue),
    400: Color(0xFFEB0000),
    700: Color(0xFFD10000),
  });
  static const int _backgroundAccentValue = 0xFFD74747;
}

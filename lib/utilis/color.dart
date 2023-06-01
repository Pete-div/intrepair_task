import 'package:flutter/material.dart';

/// Color Guide Notice (GREEN, RED, YELLOW, INFO COLOR)
/// Ranging from (50-900)
/// 50 = Light, 100 = Light :hover, 200 = Light :active,
/// 300 = Normal, 400 = Normal :hover, 500 = Normal :active,
/// 600 = Dark, 700 = Dark :hover, 800 = Dark :active, 800 = Darker

/// Color Guide Notice (GREYS)
/// Ranging from (50-900)
/// 50 = Normal, 100 = Normal :hover, 200 = Normal :active,
/// 300 = Dark, 400 = Dark :hover, 500 = Dark :active,
/// 600 = Darker, 700 = Dark :hover, 800 = Dark :active, 800 = Darker

class AppColors {
  AppColors._();

  static Color secondaryTextColor = const Color(0xff53505b);
  static Color containerTextColor = const Color(0xff8781cb);
  static Color lightBackgroundColor = const Color(0xffffffff);
  static Color dark = const Color(0xff212523);
  static const int _primaryColorValue = 0xFF781596;
  static const int _secondaryColorValue = 0xFFA55D5C;
  static const int _greenNormal = 0xFF239D56;
  static const grey = const Color(0xff8D8B8B);
  static const int _redNormal = 0xFFD44E4E;
  static const int _yellowNormal = 0xFFCBA735;
  static const int _infoColorNormal = 0xFF2A73D5;

  static const MaterialColor primaryColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      100: Color(0xffe0bce3),
      200: Color(0xffcc8fd1),
      300: Color(0xffb763be),
      400: Color(0xffa740b1),
      500: Color(0xff981da3),
      600: Color(0xff8a1a9e),
      700: Color(_primaryColorValue),
      800: Color(0xff67118e),
      900: Color(0xff490a80),
    },
  );

  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryColorValue,
    <int, Color>{
      50: Color(0xFFFEFEFF),
      100: Color(0xFFEEEFFF),
      200: Color(0xFFCCCCCC),
      300: Color(0xFFBFBFBF),
      400: Color(0xFF999999),
      500: Color(_secondaryColorValue),
      600: Color(0xFF52515B),
      700: Color(0xFF171B1D),
      800: Color(0xFF111416),
      900: Color(0xFF020313),
    },
  );

  static const MaterialColor green = MaterialColor(
    _greenNormal,
    <int, Color>{
      50: Color(0xFFE9F7EF),
      100: Color(0xFFDFF3E7),
      200: Color(0xFFBCE6CE),
      300: Color(_greenNormal),
      400: Color(0xFF239D56),
      500: Color(0xFF1F8B4D),
      600: Color(0xFF1D8348),
      700: Color(0xFF17683A),
      800: Color(0xFF124E2B),
      900: Color(0xFF0E3D22),
    },
  );

  static const MaterialColor red = MaterialColor(
    _redNormal,
    <int, Color>{
      50: Color(0xFFFDEEEE),
      100: Color(0xFFFCE6E6),
      200: Color(0xFFF9CBCB),
      300: Color(_redNormal),
      400: Color(0xFFD44E4E),
      500: Color(0xFFBC4646),
      600: Color(0xFFB04141),
      700: Color(0xFF8D3434),
      800: Color(0xFF6A2727),
      900: Color(0xFF521E1E),
    },
  );

  static const MaterialColor yellow = MaterialColor(
    _yellowNormal,
    <int, Color>{
      50: Color(0xFFFCF8EB),
      100: Color(0xFFFBF5E2),
      200: Color(0xFFF6E9C2),
      300: Color(_yellowNormal),
      400: Color(0xFFCBA735),
      500: Color(0xFFB5942F),
      600: Color(0xFFAA8B2C),
      700: Color(0xFF886F23),
      800: Color(0xFF66531B),
      900: Color(0xFF4F4115),
    },
  );

  static const MaterialColor infoColor = MaterialColor(
    _infoColorNormal,
    <int, Color>{
      50: Color(0xFFEAF2FD),
      100: Color(0xFFE0ECFC),
      200: Color(0xFFBFD8F9),
      300: Color(_infoColorNormal),
      400: Color(0xFF2A73D5),
      500: Color(0xFF2666BE),
      600: Color(0xFF2360B2),
      700: Color(0xFF1C4D8E),
      800: Color(0xFF153A6B),
      900: Color(0xFF102D53),
    },
  );
}

var mMoreDiscountStyle = const TextStyle(
    fontFamily: "Outfits",
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: primary);

const primary = Color(0xFF653332);
const dark = Colors.black;

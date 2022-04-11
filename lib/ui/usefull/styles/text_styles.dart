import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../palette.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get({
    required double fontSize,
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double? height,
  }) {
    return GoogleFonts.rubik(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      height: height == null ? null : height / fontSize,
    );
  }

  static TextStyle sp20({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.rubik(
      fontSize: 20.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle sp36({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.w500,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.rubik(
      fontSize: 36.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle sp18({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double? height,
  }) {
    return GoogleFonts.rubik(
      fontSize: 18.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
      height: height == null ? null : height / 18,
    );
  }

  static TextStyle sp16({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.rubik(
      fontSize: 16.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  // body
  static TextStyle sp14({
    Color? color = Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double? height,
  }) {
    return GoogleFonts.rubik(
      fontSize: 14,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
      height: height != null ? height / 14 : null,
    );
  }
}

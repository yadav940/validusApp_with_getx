import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../palette.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get({
    required double fontSize,
    Color color =  Palette.textColor,
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

  // Title
  static TextStyle sp15({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double? height,
  }) {
    return GoogleFonts.rubik(
      fontSize: 15,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
      height: height == null ? null : height / 15,
    );
  }

  static TextStyle sp19({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double? height,
  }) {
    return GoogleFonts.rubik(
      fontSize: 19.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
      height: height == null ? null : height / 19,
    );
  }

  static TextStyle sp20({
    Color color =  Palette.textColor,
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

  static TextStyle sp22({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.rubik(
      fontSize: 22.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  // Page Title
  static TextStyle pageTitle({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.rubik(
      fontSize: 24,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle sp36({
    Color color =  Palette.textColor,
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
  static TextStyle sp40({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.w500,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.rubik(
      fontSize: 40.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle sp28({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.rubik(
      fontSize: 28.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle sp18({
    Color color =  Palette.textColor,
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

  static TextStyle sp17({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double? height,
  }) {
    return GoogleFonts.rubik(
      fontSize: 17,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
      height: height != null ? height / 17 : null,
    );
  }

  static TextStyle sp16({
    Color color =  Palette.textColor,
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
    Color? color =  Palette.textColor,
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

  static TextStyle bodyBold({
    Color? color =  Palette.textColor,
    double? height,
  }) =>
      sp14(fontWeight: FontWeight.w700, color: color, height: height);

  static TextStyle sp12({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double? height,
  }) {
    return GoogleFonts.rubik(
      fontSize: 12,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
      height: height != null ? height / 12 : null,
    );
  }

  static TextStyle links() => sp12(color: Palette.greyScaleDark2);

  static TextStyle sp11({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.rubik(
      fontSize: 11.0,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle sp10({
    Color color =  Palette.textColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double? height,
  }) {
    return GoogleFonts.rubik(
      fontSize: 10,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
      height: height != null ? height / 10 : null,
    );
  }

}

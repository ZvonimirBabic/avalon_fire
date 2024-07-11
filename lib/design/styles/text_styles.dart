import 'package:avalon_fire/design/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvalonFireTextStyles {
  /// Headlines - FontWeight.bold
  static final TextStyle headlineLarge = TextStyle(
      color: AvalonFireColors.black,
      fontFamily: GoogleFonts.asap().fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 26);

  /// Titles - FontWeight.normal
  static final TextStyle titleLarge = TextStyle(
      color: AvalonFireColors.black,
      fontFamily: GoogleFonts.asap().fontFamily,
      fontWeight: FontWeight.normal,
      fontSize: 26);
}

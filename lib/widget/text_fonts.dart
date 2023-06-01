import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lexandText extends StatelessWidget {
  const lexandText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.height,
    this.color,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lexend(
          fontWeight: fontWeight,
          fontSize: height,
          height: 30,
          color: color ?? Colors.white),
    );
  }
}

class InterText extends StatelessWidget {
  const InterText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.height,
    this.color,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
          fontWeight: fontWeight,
          fontSize: height,
          height: 30,
          color: color ?? Colors.white),
    );
  }
}

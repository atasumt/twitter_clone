import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/global/desing/const_design.dart';

ThemeData twitterTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: kBgColor,
    textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light().textTheme)
        .apply(
          bodyColor: kBodyColor,
          displayColor: kBodyColor,
        )
        .copyWith(
          headline1: GoogleFonts.nunito(
            textStyle: ThemeData.light().textTheme.headline1,
            fontWeight: FontWeight.w800,
            fontSize: 20,
            letterSpacing: 0.70,
            color: kPrimaryColor,
          ),
          subtitle1: GoogleFonts.nunito(
            textStyle: ThemeData.light().textTheme.subtitle1,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 1.1,
            color: kBodyColor,
          ),
        ),
    iconTheme: const IconThemeData(
      color: kPrimaryColor,
    ),
  );
}

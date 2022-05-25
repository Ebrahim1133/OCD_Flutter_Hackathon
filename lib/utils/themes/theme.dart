import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';

/// theme of default app
ThemeData defaultTheme = ThemeData(
  scaffoldBackgroundColor: APPBACKGROUND,
  primaryColor: MAINCOLOR,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    centerTitle: true,
    titleTextStyle: TextStyle(color: BLACKTEXT),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: APPBACKGROUND,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: APPBAR,
    elevation: 0.0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: MAINCOLOR,
    selectedLabelStyle: TextStyle(color: MAINCOLOR),
    unselectedLabelStyle: TextStyle(color: HEADER),
    unselectedItemColor: HEADER,
    elevation: 0.0,
    backgroundColor: BOTTOMNARBAR,
  ),
  textTheme: GoogleFonts.robotoTextTheme(),
);

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/app_theme.dart';
import 'ui/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: AppTheme.kBackgroundColor,
        primaryColor: AppTheme.kBackgroundColor,
        accentColor: AppTheme.kAccentColor,
        errorColor: AppTheme.kErrorColor,
        textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(
          bodyText1: TextStyle(
            fontSize: 14,
            color: AppTheme.kWhiteColor,
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            color: AppTheme.kWhiteColor,
          ),
          caption: TextStyle(
            fontSize: 12,
            color: AppTheme.kGreyColor,
          ),
          button: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppTheme.kWhiteColor,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

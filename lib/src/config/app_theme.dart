import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const kDefaultDuration = Duration(milliseconds: 300);
  static const kBackgroundColor = Color(0xff060608);
  static const kBgColorVariant = Color(0xff2D2E32);
  static const kAccentColor = Color(0xff6FF6A7);
  static const kWhiteColor = Color(0xffFFFFFF);
  static const kGreyColor = Color(0xffCFD8DC);
  static const kDisabledTextColor = Color(0xffCFD8DC);
  static const kErrorColor = Color(0xffBF0000);

  static const kPrimaryButtonTextStyle = TextStyle(
    color: kWhiteColor,
    fontWeight: FontWeight.w400,
  );
  static const kAccentButtonTextStyle = TextStyle(
    color: kAccentColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle kCodeTextGrey = GoogleFonts.firaCode(
    textStyle: kPrimaryButtonTextStyle.copyWith(
      color: kGreyColor,
    ),
  );
  static TextStyle kCodeTextWhite = GoogleFonts.firaCode(
    textStyle: kPrimaryButtonTextStyle.copyWith(
      color: kWhiteColor,
    ),
  );
  static final BoxShadow boxShadow = BoxShadow(
    color: kGreyColor,
    offset: Offset(0.0, 1.0), //(x,y)
    blurRadius: 6.0,
  );

  static final kRoundBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));
}

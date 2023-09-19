import 'package:flutter/cupertino.dart';

class Config
{
  static MediaQueryData? mediaQueryData;
  static double? scWidth;
  static double? scHeight;

  //initialization of width & height
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    scWidth = mediaQueryData!.size.width;
    scHeight = mediaQueryData!.size.height;
  }

  static const primaryColor=Color(0xffBE08DA);

  static const smallTextColor=Color(0xffB528FB);

  static const colorGrey=Color(0xff979fa6);

  static const colorNews =Color(0xff10538d);

  static const colorWelcome = Color(0xff12A7E3);

  static const colorCategory = Color(0xffC6ADD2);

  static const primaryFont='Vidaloka';

  static const primaryFontTitle='Rubik';

  static const primaryWeight=FontWeight.w800;

  static const primaryWeightTitle=FontWeight.w700;


}

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

  static const colorGrey=Color(0xff95A5A6);

  static const primaryFontEnglish='Vidaloka';

  static const primaryWeightEnglish=FontWeight.w800;


}

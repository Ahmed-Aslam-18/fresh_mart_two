import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

double getDeviceHight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getTopPadding(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double getDeviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

TextStyle subtitle(BuildContext context) {
  return GoogleFonts.poppins(
      color: Colors.black, fontSize: getDeviceWidth(context) * 0.045);
}

TextStyle onBoardingTitle(BuildContext context) {
  return GoogleFonts.poppins(
      color: Color(0xFF222B45), fontSize: getDeviceWidth(context) * 0.065);
}

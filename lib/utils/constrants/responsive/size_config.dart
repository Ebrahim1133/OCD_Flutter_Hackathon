import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;
  // The constant kToolbarHeight has the height value of the AppBar (if you are using the default AppBar height)
  // and with MediaQuery.of(context).padding.top you can retrieve the height of the status bar.
  // if you use a BottomNavigation
  // Then the actual meaningful screen height will be:
  // MediaQuery.of(context).size.height — MediaQuery.of(context).padding.top — kToolbarHeight - kBottomNavigationBarHeight

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

double getProportionateText(double value) {
  double screenHeight = SizeConfig.screenHeight;
  // 375 is the layout width that designer use
  return (value / 720) * screenHeight ; // it's like +2 textSize
}


// @override
// Widget build(BuildContext context) {
//   var shortestSide = MediaQuery.of(context).size.shortestSide;
//   var useMobileLayout = shortestSide < 600;
//
//   if (useMobileLayout) {
//     return _buildMobileLayout();
//   }
//
//   return _buildTabletLayout();
// }
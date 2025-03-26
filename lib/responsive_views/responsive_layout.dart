import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget desktopScreen;
  final Widget tabletScreen;

  ResponsiveLayout({
    required this.mobileScreen,
    required this.tabletScreen,
    required this.desktopScreen,
  });
//setting the value of isMobile to be true if it meets the condition signified.
//same thing for isTablet and isDesktop.
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 840;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 840;

  @override
  Widget build(BuildContext context) {
    //if the context of the build for isMobile is true then we want to return the isMobile screen defined earlier.
    if (isMobile(context)) {
      return mobileScreen;
    }
    //    else if (isTablet(context) && tabletScreen != null){ is this a proper approach?
//if the istablet context is true then return that screen else return the desktop screen which is the largest.
    else if (isTablet(context)) {
      return tabletScreen;
    } else {
      return desktopScreen;
    }
  }
}

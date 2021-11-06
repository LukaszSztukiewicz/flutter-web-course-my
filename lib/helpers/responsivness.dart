import 'package:flutter/material.dart';
import 'package:flutterwebcourse/large_screen.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final Widget? customScreen;

  const ResponsiveWidget(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.customScreen,
      this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= mediumScreenSize;
  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < largeScreenSize &&
      MediaQuery.of(context).size.width >= mediumScreenSize;
  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > mediumScreenSize &&
      MediaQuery.of(context).size.width <= customScreenSize;
  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      //double _width = constraints.maxWidth;
      if(ResponsiveWidget.isLargeScreen(context)){
        return largeScreen;
      }else if(ResponsiveWidget.isCustomScreen(context)){
        return customScreen ?? largeScreen;
      }else if(ResponsiveWidget.isMediumScreen(context)){
        return mediumScreen ?? largeScreen;
      }else{
        return smallScreen ?? largeScreen;
      }
    });
  }
}

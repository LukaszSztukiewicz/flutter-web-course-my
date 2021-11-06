import 'package:flutter/material.dart';
import 'package:flutterwebcourse/helpers/responsivness.dart';
import 'package:flutterwebcourse/large_screen.dart';
import 'package:flutterwebcourse/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        customScreen: CustomScreen(),
        mediumScreen: MediumScreen(),
      ),
    );
  }
}

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.cyan,);
  }
}
class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue,);
  }
}
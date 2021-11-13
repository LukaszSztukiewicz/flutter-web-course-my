import 'package:flutter/material.dart';
import 'package:flutterwebcourse/helpers/responsivness.dart';
import 'package:flutterwebcourse/large_screen.dart';
import 'package:flutterwebcourse/small_screen.dart';
import 'package:flutterwebcourse/widget/top_nav.dart';
import 'package:get/get.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  //final  scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
          child: Container(
        color: Colors.redAccent,
      )),
      appBar: topNavigationBar(context, scaffoldKey),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: MediumScreen(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(
          SmallScreen(),
          fullscreenDialog: false,
          transition: Transition.cupertino,
          curve: Curves.easeIn,
          duration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
    );
  }
}

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

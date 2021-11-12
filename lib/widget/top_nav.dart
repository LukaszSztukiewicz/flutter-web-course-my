  import 'package:flutter/material.dart';
import 'package:flutterwebcourse/constants/style.dart';
import 'package:flutterwebcourse/helpers/responsivness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: !ResponsiveWidget.isSmallScreen(context) ? Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 14),
            color: lightGrey,
          )
        ],
      ) :IconButton(onPressed: ()=> key.currentState!.openDrawer(), icon: Icon(Icons.mic)),
    );
  }
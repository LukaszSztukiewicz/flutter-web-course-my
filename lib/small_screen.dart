import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      constraints: const BoxConstraints.expand(),
      child: Center(child: Column(
        children: [
          Text("name"),
          ElevatedButton(child:Text("Home") ,onPressed: ()=> Get.back(),),
        ],
      )),
    );
  }
}

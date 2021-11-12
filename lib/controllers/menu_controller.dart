import 'package:flutterwebcourse/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController{
  static MenuController instance = Get.find();
  RxString isSelected = overviewPageRoute.obs;
  var hoverItem = "".obs;

  isHovered(itemName) => itemName == hoverItem;

}
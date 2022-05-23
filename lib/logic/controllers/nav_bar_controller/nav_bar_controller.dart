import 'package:get/get.dart';

class NavBarController extends GetxController {
  bool isactive = false;
  void active() {
    isactive = !isactive;

    update();
  }
}

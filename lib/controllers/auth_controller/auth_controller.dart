import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isVisibilty = false;
  bool isCheckBox = false;

  ///check password visible or not
  void visibility() {
    isVisibilty = !isVisibilty;

    update();
  }

  /// check checkbox is checked or not
  void checkBox() {
    isCheckBox = !isCheckBox;

    update();
  }
}

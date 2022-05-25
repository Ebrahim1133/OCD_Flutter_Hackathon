import 'package:get/instance_manager.dart';
import 'package:ocd/controllers/auth_controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}

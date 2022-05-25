import 'package:get/get.dart';
import 'package:ocd/controllers/onboarding_controller/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}

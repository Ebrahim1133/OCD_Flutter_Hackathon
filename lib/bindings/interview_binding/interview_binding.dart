import 'package:get/get.dart';
import 'package:ocd/controllers/interview_controller/InterviewController.dart';

class InterviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InterviewController());
  }
}

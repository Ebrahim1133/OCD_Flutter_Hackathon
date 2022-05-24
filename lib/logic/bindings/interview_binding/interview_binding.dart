import 'package:get/get.dart';
import 'package:ocd/logic/controllers/interview_controller/InterviewController.dart';

class InterviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InterviewController());
  }
}

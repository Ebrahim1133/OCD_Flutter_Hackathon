import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/interview_model/interview_info_model.dart';

class InterviewController extends GetxController {
  var selectedPageIndex = 0.obs;

  var pageController = PageController();
  bool get isLastPage => selectedPageIndex.value == InterviewPages.length - 1;

  nextPage() {
    {
      pageController.nextPage(
          duration: 300.milliseconds, curve: Curves.easeInCubic);
    }
    update();
  }

  var title2 = [
    "HR interview",
    "Result",
    "Process Completed",
  ];
  List<InterviewInfoModel> InterviewPages = [
    InterviewInfoModel('assets/images/hr.svg', 'Wait for the Call',
        'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, sed do'),
    InterviewInfoModel('assets/images/think.svg', 'Wait for the Call',
        'Lorem ipsum dolor sit amet,\n  consectetur adipiscing elit, sed do'),
    InterviewInfoModel(
        'assets/images/white.svg', '\n', 'consectetur adipiscing elit, sed do'),
  ];
}

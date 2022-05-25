import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/interview_model/interview_info_model.dart';

class InterviewController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  ///get next page to list page view (interview pages view)
  nextPage() {
    {
      pageController.nextPage(
          duration: 300.milliseconds, curve: Curves.easeInCubic);
    }
    update();
  }

  /// list of titles page view (interview pages view)
  var title2 = [
    "HR interview",
    "Result",
    "Process Completed",
  ];

  /// list of page view (interview pages view)
  List<InterviewInfoModel> InterviewPages = [
    InterviewInfoModel('assets/images/hr.svg', 'Wait for the Call',
        'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, sed do'),
    InterviewInfoModel('assets/images/think.svg', 'Waiting for the Result',
        'Lorem ipsum dolor sit amet,\n  consectetur adipiscing elit, sed do'),
    InterviewInfoModel(
        'assets/images/white.svg', '\n', 'consectetur adipiscing elit, sed do'),
  ];
}

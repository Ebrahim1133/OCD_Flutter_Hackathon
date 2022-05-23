import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../model/onboard_model/onboarding_info_model.dart';

class OnBoardingController extends GetxController {
  int isViewed = 0;
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  final GetStorage getStorage = GetStorage();
  void storeOnboardInfo() {
    getStorage.write("onboard", isViewed);
  }

  List<OnboardingInfoModel> onBoardingPages = [
    OnboardingInfoModel(
        'assets/images/hello.svg',
        'Learn a lot of courses \n in Orange Education',
        'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua.'),
    OnboardingInfoModel(
        'assets/images/meeting.svg',
        'Learn a lot of courses \n in Orange Education',
        'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua.'),
    OnboardingInfoModel(
        'assets/images/cerification.svg',
        'Learn a lot of courses \n in Orange Education',
        'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua.'),
  ];
}

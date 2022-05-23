import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ocd/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

int? isviewed;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    GetStorage onboared = GetStorage();
    isviewed = onboared.read('onboard');
    Timer(const Duration(seconds: 5), () {
      isviewed != 0
          ? Get.offNamed(Routes.onboardScreen1)
          : Get.offNamed(Routes.loginScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            child: SvgPicture.asset('assets/images/logo_main.svg'),
          ),
        ),
      ),
    );
  }
}

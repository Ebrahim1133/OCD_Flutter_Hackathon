import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';

import '../../../widgets/default_app_bar/default_app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: DefaultAppBar(
          titleColor: BLACKTEXT,
          onPressed: () {
            Get.back();
          },
          icon: Icons.arrow_back,
          iconColor: BLACKTEXT,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                width: 350,
                child: Row(
                  children: const [
                    Text(
                      "Privacy ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: BLACKTEXT,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      "Policy",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: MAINCOLOR,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 550,
                width: 339,
                child: SingleChildScrollView(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing "
                    "elit, sed do eiusmd tempor incididunt ut labore et "
                    "dolore magna aliqua Lorem ipsum dolor sit amet,"
                    " consectetur adipiscing elit, sed do eiusmd tempor"
                    " incididunt ut labore et dolore magna aliqua. Lorem "
                    "ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed "
                    "do eiusmd tempor incididunt ut labore et dolore magna aliqua. "
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua."
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua. "
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                    " do eiusmd tempor incididunt ut labore et dolore magna aliqua.  ",
                    style: TextStyle(
                      fontSize: 16,
                      color: BLACKTEXT,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

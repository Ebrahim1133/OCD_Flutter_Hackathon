import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:ocd/routes/routes.dart';

import '../../../utils/constrants/colors/colors.dart';
import '../../widgets/default_Buttom/defalt_buttom.dart';

// ignore: must_be_immutable
class CourseScreenAfterCompleteCourseRegistration extends StatelessWidget {
  CourseScreenAfterCompleteCourseRegistration({Key? key}) : super(key: key);
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset('assets/images/Rectangle 47.png'),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.homeScreen);
                      },
                      child: Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(
                              top: 24, right: 16, left: 16, bottom: 16),
                          child:
                              SvgPicture.asset('assets/icons/back_black.svg')),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Learn UI/UX for beginners',
              style: TextStyle(
                  fontSize: 26, fontWeight: FontWeight.w600, color: BLACKTEXT),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              width: 158,
              height: 22,
              child: const Text(
                'Author: Ahmed Abaza',
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w600, color: HINTTEXT),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  ' Session 1',
                ),
                Text(
                  'Quiz 1',
                  style: TextStyle(color: HINTPROCESS),
                ),
                Text(
                  'Session 2',
                  style: TextStyle(color: HINTPROCESS),
                ),
                Text(
                  'Quiz 2',
                  style: TextStyle(color: HINTPROCESS),
                ),
                Text(
                  'Final Project',
                  style: TextStyle(color: HINTPROCESS),
                ),
              ],
            ),
            LinearStepIndicator(
              steps: 5,
              lineHeight: 3.5,
              nodeSize: 30,
              activeNodeColor: MAINCOLOR,
              inActiveNodeColor: Color(0xFFF7F7F7),
              activeLineColor: MAINCOLOR,
              inActiveBorderColor: HINTPROCESS,
              activeBorderColor: MAINCOLOR,
              inActiveLineColor: HINTPROCESS,
              controller: pageController,
              complete: () {
                return Future.value(true);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '4/27',
                ),
                Text(
                  '5/4',
                  style: TextStyle(color: HINTPROCESS),
                ),
                Text(
                  '5/11',
                  style: TextStyle(color: HINTPROCESS),
                ),
                Text(
                  '5/18',
                  style: TextStyle(color: HINTPROCESS),
                ),
                Text(
                  '5/18',
                  style: TextStyle(color: HINTPROCESS),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: const Color(0xFFFAFAFA),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Image(
                            image: AssetImage('assets/icons/map.png'),
                            color: null),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            'Cairo',
                            style: TextStyle(
                                color: BLACKTEXT,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Image(
                          image: AssetImage('assets/icons/Time.png'),
                          color: null,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '27/4/2022, 10:30 am',
                          style: TextStyle(
                              color: BLACKTEXT,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Scan your QR Code to take your attendance',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: BLACKTEXT),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SvgPicture.asset(
              'assets/images/qr.svg',
              width: 120,
              height: 120,
            ),
            const SizedBox(
              height: 10,
            ),
            DefaultButtom(
              textButtom: 'Start Quiz 1',
              width: 350,
              height: 50,
              backgroundColor: BUTTOMDISABLE,
              borderColor: BUTTOMDISABLE,
              textColor: BUTTOMDISABLETEXT,
              onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

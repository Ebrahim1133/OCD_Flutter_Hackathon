import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';

import '../../../../logic/controllers/interview_controller/InterviewController.dart';
import '../../../../routes/routes.dart';
import '../../../../utils/constrants/colors/colors.dart';
import '../../../widgets/default_Buttom/defalt_buttom.dart';
import '../../../widgets/default_app_bar/default_app_bar.dart';

class HrInterviewScreen extends StatelessWidget {
  HrInterviewScreen({Key? key}) : super(key: key);
  final controller = Get.find<InterviewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<InterviewController>(
        builder: (_) {
          return Scaffold(
            appBar: DefaultAppBar(
                title: controller.title2[controller.selectedPageIndex.value],
                titleColor: BLACKTEXT,
                secandicon: Text(
                  "",
                  style: TextStyle(color: APPBAR),
                ),
                icon: Icon(Icons.android),
                titleSpacing: -30),
            body: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                FullLinearStepIndicator(
                  steps: 3,
                  lineHeight: 3.5,
                  nodeSize: 25,
                  activeNodeColor: MAINCOLOR,
                  inActiveNodeColor: HINTPROCESS,
                  activeLineColor: MAINCOLOR,
                  inActiveBorderColor: HINTPROCESS,
                  activeBorderColor: MAINCOLOR,
                  inActiveLineColor: HINTPROCESS,
                  controller: controller.pageController,
                  labels: List<String>.generate(3, (index) {
                    if (index == 0) {
                      return "Exam";
                    } else if (index == 1) {
                      return "HR interview";
                    } else {
                      return "Result";
                    }
                  }),
                  complete: () {
                    return Future.value(true);
                  },
                ),
                Expanded(
                  flex: 70,
                  child: PageView.builder(
                    controller: controller.pageController,
                    reverse: false,
                    onPageChanged: controller.selectedPageIndex,
                    itemCount: controller.InterviewPages.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              controller.InterviewPages[index].imageAsset,
                              width: 282.3,
                              height: 242.07),
                          const SizedBox(height: 45),
                          Text(
                            controller.InterviewPages[index].title,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: BLACKTEXT),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 32.0),
                            child: Text(
                              controller.InterviewPages[index].description,
                              style: const TextStyle(
                                  fontSize: 13, color: DESCIPRTION),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                controller.selectedPageIndex.value == 1
                    ? Expanded(
                        flex: 30,
                        child: GetBuilder<InterviewController>(
                          builder: (_) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                DefaultButtom(
                                  textButtom: 'Go to Course',
                                  width: 250,
                                  height: 50,
                                  backgroundColor: MAINCOLOR,
                                  borderColor: MAINCOLOR,
                                  textColor: APPBACKGROUND,
                                  onpressed: () {
                                    Get.toNamed(Routes
                                        .courseScreenAfterCompleteCourseRegistration);
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                DefaultButtom(
                                    textButtom: 'Back to Home',
                                    width: 250,
                                    height: 50,
                                    backgroundColor: APPBACKGROUND,
                                    borderColor: MAINCOLOR,
                                    textColor: MAINCOLOR,
                                    onpressed:
                                        controller.selectedPageIndex.value == 2
                                            ? () {
                                                controller.nextPage();
                                              }
                                            : () {
                                                Get.toNamed(
                                                    Routes.courseFailsScreen);
                                              }),
                              ],
                            );
                          },
                        ),
                      )
                    : Expanded(
                        flex: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GetBuilder<InterviewController>(
                              builder: (controller) {
                                return DefaultButtom(
                                    textButtom: 'Back to Home',
                                    width: 250,
                                    height: 50,
                                    backgroundColor: APPBACKGROUND,
                                    borderColor: MAINCOLOR,
                                    textColor: MAINCOLOR,
                                    onpressed: () {
                                      controller.nextPage();
                                    });
                              },
                            ),
                          ],
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}

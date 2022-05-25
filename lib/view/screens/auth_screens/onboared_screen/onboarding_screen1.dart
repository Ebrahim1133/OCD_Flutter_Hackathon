import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ocd/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:ocd/routes/routes.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';
import 'package:ocd/view/widgets/default_Buttom/defalt_buttom.dart';

class OnBoaredScreen1 extends StatelessWidget {
  OnBoaredScreen1({Key? key}) : super(key: key);
  final controller = Get.find<OnBoardingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 70,
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.selectedPageIndex,
                itemCount: controller.onBoardingPages.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          controller.onBoardingPages[index].imageAsset,
                          width: 282.3,
                          height: 242.07),
                      const SizedBox(height: 45),
                      Text(
                        controller.onBoardingPages[index].title,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: BLACKTEXT),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text(
                          controller.onBoardingPages[index].description,
                          style:
                              const TextStyle(fontSize: 13, color: DESCIPRTION),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.onBoardingPages.length,
                (index) => Obx(() {
                  return Container(
                    margin: const EdgeInsets.all(6),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: controller.selectedPageIndex.value == index
                          ? MAINCOLOR
                          : HINTTEXT,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              flex: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GetBuilder<OnBoardingController>(
                    builder: (controller) {
                      return DefaultButtom(
                        textButtom: 'Log In',
                        width: 150,
                        height: 50,
                        backgroundColor: MAINCOLOR,
                        borderColor: MAINCOLOR,
                        textColor: APPBACKGROUND,
                        onpressed: () {
                          controller.storeOnboardInfo();
                          Get.offNamed(Routes.loginScreen);
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  GetBuilder<OnBoardingController>(
                    builder: (controller) {
                      return DefaultButtom(
                        width: 150,
                        height: 50,
                        textButtom: 'Join Now',
                        backgroundColor: APPBACKGROUND,
                        borderColor: MAINCOLOR,
                        textColor: MAINCOLOR,
                        onpressed: () {
                          controller.storeOnboardInfo();
                          Get.offNamed(Routes.signUpScreen);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

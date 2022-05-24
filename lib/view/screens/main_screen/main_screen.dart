import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ocd/view/widgets/default_app_bar/default_app_bar.dart';
import 'package:ocd/view/widgets/default_nav_bar/defaulr_nav_bar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../logic/controllers/main_controller/main_controller.dart';
import '../../../routes/routes.dart';
import '../../../utils/constrants/colors/colors.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
            appBar: controller.currentIndex.value == 0
                ?
                // ? AppBar(
                //     automaticallyImplyLeading: false,
                //     elevation: 0,
                //   )
                null
                : DefaultAppBar(
                    title: controller.title[controller.currentIndex.value],
                    titleColor: MAINCOLOR,
                    centerTitle: false,
                    icon: Icon(Icons.android),
                    padding: 0,
                    paddingRight: 15,
                    titleSpacing: -30,
                    secandicon: controller.currentIndex.value == 2
                        ? InkWell(
                            onTap: () {
                              Alert(
                                context: context,
                                image: SvgPicture.asset(
                                    'assets/images/good_luck.svg'),
                                style: const AlertStyle(
                                    isCloseButton: false,
                                    constraints: BoxConstraints.expand(
                                        width: 299, height: 390),
                                    descStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                desc: "Are you sure you want to log out",
                                buttons: [
                                  DialogButton(
                                    height: 43,
                                    width: 109,
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          color: MAINCOLOR, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    color: APPBACKGROUND,
                                    radius: BorderRadius.circular(15),
                                    border: Border.fromBorderSide(
                                        BorderSide(color: MAINCOLOR)),
                                  ),
                                  DialogButton(
                                    height: 43,
                                    width: 109,
                                    radius: BorderRadius.circular(15),
                                    child: Text(
                                      "Log out",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Get.toNamed(Routes.loginScreen);
                                    },
                                    color: MAINCOLOR,
                                  ),
                                ],
                              ).show();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 22, top: 0),
                              child: Image(
                                image: AssetImage("assets/icons/Logout.png"),
                                color: null,
                                width: 24,
                                height: 24,
                              ),
                            ),
                          )
                        : Text(
                            "",
                            style: TextStyle(color: APPBAR),
                          ),
                  ),
            body: IndexedStack(
              index: controller.currentIndex.value,
              children: controller.tabs,
            ),
            bottomNavigationBar: DefaultNavBar(
              index: controller.currentIndex.value,
              onTap: (index) {
                controller.currentIndex.value = index;
              },
            ));
      }),
    );
  }
}

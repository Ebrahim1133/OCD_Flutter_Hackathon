import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ocd/logic/controllers/nav_bar_controller/nav_bar_controller.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final controller = Get.find<NavBarController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text('main'),
        bottomNavigationBar: GetBuilder<NavBarController>(
          builder: (_) {
            return ConvexAppBar(
              style: TabStyle.react,
              height: 50,
              top: 0,
              backgroundColor: APPBACKGROUND,
              activeColor: MAINCOLOR,
              curveSize: 0,

              color: BLACKTEXT,
              onTap: (int i) {},

              items: [
                TabItem(
                  activeIcon: ImageIcon(
                    AssetImage("assets/icons/Active_home.png"),
                    color: MAINCOLOR,
                    size: 15,
                  ),
                  icon: ImageIcon(
                    AssetImage("assets/icons/home.png"),
                    color: BLACKTEXT,
                    size: 20,
                  ),
                ),
                TabItem(
                  activeIcon: ImageIcon(
                    AssetImage("assets/icons/Active_My_Courses.png"),
                    color: MAINCOLOR,
                    size: 20,
                  ),
                  icon: ImageIcon(
                    AssetImage("assets/icons/book-open.png"),
                    color: BLACKTEXT,
                    size: 20,
                  ),
                ),
                TabItem(
                    activeIcon: ImageIcon(
                      AssetImage("assets/icons/Active_Profile.png"),
                      color: MAINCOLOR,
                      size: 20,
                    ),
                    icon: ImageIcon(
                      AssetImage("assets/icons/Profile.png"),
                      color: BLACKTEXT,
                      size: 20,
                    )),
              ],
              //optional, default as 0
            );
          },
        ),
      ),
    );
  }
}

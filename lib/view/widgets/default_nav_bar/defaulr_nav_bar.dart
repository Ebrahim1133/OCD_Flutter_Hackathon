import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../utils/constrants/colors/colors.dart';

class DefaultNavBar extends StatelessWidget {
  const DefaultNavBar({Key? key, required this.index, required this.onTap})
      : super(key: key);
  final int index;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      style: TabStyle.react,
      height: 50,
      top: 0,
      backgroundColor: APPBACKGROUND,
      activeColor: MAINCOLOR,
      curveSize: 0,
      initialActiveIndex: index,
      color: BLACKTEXT,
      onTap: onTap,

      items: const [
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
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constrants/colors/colors.dart';
import '../../widgets/default_Buttom/defalt_buttom.dart';
import '../../widgets/default_app_bar/default_app_bar.dart';

class CourseFailsScreen extends StatelessWidget {
  const CourseFailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: DefaultAppBar(
          title: "Result",
          titleColor: BLACKTEXT,
          secandicon: Text(
            "",
            style: TextStyle(color: APPBAR),
          ),
          titleSpacing: -30,
          icon: Icon(
            Icons.android,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/good_luck.svg",
                width: 282.3, height: 242.07),
            const SizedBox(height: 45),
            Text(
              "Lorem ipsum dolor",
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: BLACKTEXT),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                "Lorem ipsum dolor sit amet, "
                "consectetur adipiscing elit, sed do",
                style: const TextStyle(fontSize: 13, color: DESCIPRTION),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            DefaultButtom(
              textButtom: 'Back to Home',
              width: 250,
              height: 50,
              backgroundColor: APPBACKGROUND,
              borderColor: MAINCOLOR,
              textColor: MAINCOLOR,
              onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';
import 'package:ocd/view/widgets/card_achievement/card_achievement.dart';

import '../../widgets/avater_image/avater_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvaterPerson(
                  "assets/icons/you.jpg",
                  width: 95,
                  height: 95,
                  borderColor: MAINCOLOR,
                  borderWidth: 6,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Ahmed Abaza',
              style: TextStyle(
                  fontSize: 26, fontWeight: FontWeight.w600, color: BLACKTEXT),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 158,
              height: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: TEXTFIELDLOGIN),
              child: Text(
                'Ahmedabaza@gmail.com',
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w600, color: HINTTEXT),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'My Achievement',
                    style: TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.w600,
                        color: BLACKTEXT),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CardAchievement();
              },
              itemCount: 2,
            )
          ],
        ),
      ),
    );
  }
}

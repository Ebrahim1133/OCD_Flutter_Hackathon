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
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AvaterPerson(
                  "assets/icons/you.jpg",
                  width: 100,
                  height: 100,
                  borderColor: MAINCOLOR,
                  borderWidth: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Ahmed Abaza',
              style: TextStyle(
                  fontSize: 26, fontWeight: FontWeight.w600, color: BLACKTEXT),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 158,
              height: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: TEXTFIELDLOGIN),
              child: const Text(
                'Ahmedabaza@gmail.com',
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w600, color: HINTTEXT),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
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
            const SizedBox(
              height: 22,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const CardAchievement();
              },
              itemCount: 2,
            )
          ],
        ),
      ),
    );
  }
}

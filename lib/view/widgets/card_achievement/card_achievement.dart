import 'package:flutter/material.dart';

import '../../../utils/constrants/colors/colors.dart';

class CardAchievement extends StatelessWidget {
  const CardAchievement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365.17,
      height: 110.66,
      decoration:
          BoxDecoration(color: APPBAR, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Star1.png',
            width: 75,
            height: 75,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Learn UI/UX for beginners',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.5,
                    color: BLACKTEXT),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Achieved April 21 2022',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11.0657,
                    color: DATAACTIVE),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utils/constrants/colors/colors.dart';

class CardAchievement extends StatelessWidget {
  const CardAchievement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(10),
      width: 365.17,
      height: 110.66,
      decoration: BoxDecoration(
          color: CARDACHIMRNT, borderRadius: BorderRadius.circular(11)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Star1.png',
            width: 75,
            height: 75,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
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
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

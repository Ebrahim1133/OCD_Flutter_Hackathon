import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';

class CardCourse extends StatelessWidget {
  const CardCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Image(image: AssetImage('assets/images/Photo.png')),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Web Development',
                style: TextStyle(
                    color: MAINCOLOR,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Become a Web Developer from Scratch',
            style: TextStyle(
                color: HEADER, fontSize: 17, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Ahmed Abaza',
                style: TextStyle(
                    color: HINTDESCRIPTION,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset('assets/images/dot.svg'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '15 Hours',
                style: TextStyle(
                    color: HINTDESCRIPTION,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}

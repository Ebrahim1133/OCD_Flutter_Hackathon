import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageUpConcer extends StatelessWidget {
  const ImageUpConcer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        child: Stack(children: [
          SvgPicture.asset('assets/images/background_login.svg'),
          Container(
              child: SvgPicture.asset('assets/images/back_login2.svg'),
              margin: const EdgeInsets.only(bottom: 7),
              padding: const EdgeInsets.only(left: 15)),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constrants/colors/colors.dart';

class ImageDownConcer extends StatelessWidget {
  const ImageDownConcer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomLeft,
        color: APPBACKGROUND,
        child: Stack(children: [
          Container(
              child: SvgPicture.asset('assets/images/Rectangle 2664.svg'),
              margin: EdgeInsets.only(top: 22),
              padding: EdgeInsets.only(right: 15)),
          Container(
              child: SvgPicture.asset('assets/images/Rectangle 2665.svg'),
              margin: EdgeInsets.only(top: 43),
              padding: EdgeInsets.only(right: 15)),
        ]));
  }
}

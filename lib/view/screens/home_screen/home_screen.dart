import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocd/view/widgets/card_course/card_course.dart';

import '../../../utils/constrants/colors/colors.dart';
import '../../../utils/constrants/validation_patterns/my_string.dart';
import '../../widgets/auth_widgets/auth_text_form_field.dart';

int pageIndex = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    'assets/images/logo ocd.svg',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    SvgPicture.asset('assets/images/backgroundsearch.svg'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Enter the Code to Get your course',
                            style: TextStyle(
                                color: APPBACKGROUND,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: AuthTextFromField(
                                    controller: codeController,
                                    padding: 10,
                                    borderColor: TEXTFIELDCODE,
                                    formColor: TEXTFIELDCODE,
                                    hintColor: HINTCODE,
                                    obscureText: false,
                                    inputColor: APPBACKGROUND,
                                    validator: (value) {
                                      if (!RegExp(validationPhone)
                                          .hasMatch(value)) {
                                        return 'Invalid Code';
                                      } else {
                                        return null;
                                      }
                                    },
                                    hintText: 'Enter code',
                                    type: TextInputType.phone),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: InkWell(
                                  onTap: () {},
                                  child: const CircleAvatar(
                                    radius: 25,
                                    backgroundColor: MAINCOLOR,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/icons/Arrow - Left.png'),
                                      color: null,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Top Categories',
                      style: TextStyle(
                          color: HEADER,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              color: HEADER,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: CATGROYICON,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                        blurRadius: 4.0,
                                        // spreadRadius: 4.0,
                                      ), //BoxShadow
                                    ]),
                                child: SvgPicture.asset(
                                    'assets/icons/interent.svg')),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Web Development',
                              style: TextStyle(
                                  color: BLACKTEXT,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: CATGROYICON,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                        blurRadius: 4.0,
                                        // spreadRadius: 4.0,
                                      ), //BoxShadow
                                    ]),
                                child: SvgPicture.asset(
                                    'assets/icons/programming.svg')),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Programing Languages',
                              style: TextStyle(
                                  color: BLACKTEXT,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: CATGROYICON,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                        blurRadius: 4.0,
                                        // spreadRadius: 4.0,
                                      ), //BoxShadow
                                    ]),
                                child: SvgPicture.asset(
                                    'assets/icons/computer.svg')),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Graphics',
                              style: TextStyle(
                                  color: BLACKTEXT,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'New Courses',
                      style: TextStyle(
                          color: HEADER,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              color: MAINCOLOR,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: List.generate(3, (index) => const CardCourse()),
                  options: CarouselOptions(
                      height: 300,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      viewportFraction: .75,
                      initialPage: pageIndex,
                      reverse: false,
                      onPageChanged: (index, _) {
                        setState(() {
                          pageIndex = index;
                        });
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

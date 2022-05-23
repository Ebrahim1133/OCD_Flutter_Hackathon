import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ocd/routes/routes.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';
import 'package:ocd/view/widgets/auth_widgets/auth_text_form_field.dart';
import 'package:ocd/view/widgets/default_Buttom/defalt_buttom.dart';

import '../../../../../utils/constrants/my_string.dart';
import '../../../../widgets/default_app_bar/default_app_bar.dart';

class ForgotPasswordSendEmailScreen extends StatelessWidget {
  ForgotPasswordSendEmailScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: DefaultAppBar(
          title: "Verify Your Email",
          titleColor: BLACKTEXT,
          onPressed: () {
            Get.back();
          },
          icon: Icons.arrow_back,
          iconColor: BLACKTEXT,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(46.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  SvgPicture.asset('assets/images/question_lock.svg'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    ' Please enter your email address to recieve vervication code',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: BLACKTEXT),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AuthTextFromField(
                    controller: emailController,
                    obscureText: false,
                    validator: (value) {
                      if (!RegExp(validationEmail).hasMatch(value!)) {
                        return 'Invalid email';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'E-mail',
                    type: TextInputType.emailAddress,
                    padding: 18,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultButtom(
                    onpressed: () {
                      Get.toNamed(Routes.forgotPasswordVerifyEmailScreen);
                    },
                    width: 350,
                    height: 50,
                    textColor: APPBACKGROUND,
                    borderColor: MAINCOLOR,
                    backgroundColor: MAINCOLOR,
                    textButtom: 'Send',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

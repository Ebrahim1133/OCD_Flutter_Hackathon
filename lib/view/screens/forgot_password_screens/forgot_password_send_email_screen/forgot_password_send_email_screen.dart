import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ocd/routes/routes.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';
import 'package:ocd/view/widgets/auth_widgets/defalt_buttom.dart';

import '../../../../utils/constrants/my_string.dart';

class ForgotPasswordSendEmailScreen extends StatelessWidget {
  ForgotPasswordSendEmailScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 22.0),
            child: Text(
              "Froget Password",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: BLACKTEXT,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Padding(
              padding: EdgeInsets.all(22.0),
              child: Icon(
                Icons.arrow_back,
                color: BLACKTEXT,
                size: 24,
              ),
            ),
          ),
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
                  TextFormField(
                    controller: emailController,
                    obscureText: false,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (!RegExp(validationEmail).hasMatch(value!)) {
                        return 'Invalid email';
                      } else {
                        return null;
                      }
                    },
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      fillColor: TEXTFIELDCOLOR,
                      contentPadding: const EdgeInsets.all(18),
                      hintText: 'E-mail',
                      hintStyle: const TextStyle(
                        color: HINTTEXTFORMFIELD,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
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

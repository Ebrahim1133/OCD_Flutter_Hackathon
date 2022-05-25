import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ocd/routes/routes.dart';
import 'package:ocd/view/widgets/default_Buttom/defalt_buttom.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../utils/constrants/colors/colors.dart';
import '../../../../widgets/default_app_bar/default_app_bar.dart';

class ForgotPasswordVerifyEmailScreen extends StatefulWidget {
  const ForgotPasswordVerifyEmailScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordVerifyEmailScreen> createState() =>
      _ForgotPasswordVerifyEmailScreenState();
}

class _ForgotPasswordVerifyEmailScreenState
    extends State<ForgotPasswordVerifyEmailScreen> {
  final TextEditingController pinController = TextEditingController();

  late final StreamController<ErrorAnimationType> errorController;
  String? currentText;
  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: DefaultAppBar(
          title: "Verify Your Email",
          titleColor: BLACKTEXT,
          secandicon: const Text(
            "",
            style: TextStyle(color: APPBAR),
          ),
          icon: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Padding(
              padding: EdgeInsets.all(22.0),
              child: Icon(
                Icons.arrow_back,
                size: 24,
                color: BLACKTEXT,
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
                  SvgPicture.asset('assets/images/post_message.svg'),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: const [
                      Text(
                        ' please enter the 4-digit code sent to',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: BLACKTEXT),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        ' ahmedabaza@gmail.com',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: MAINCOLOR),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      selectedColor: TEXTFIELDLOGIN,
                      shape: PinCodeFieldShape.box,
                      selectedFillColor: TEXTFIELDLOGIN,
                      borderRadius: BorderRadius.circular(5),
                      inactiveColor: TEXTFIELDLOGIN,
                      inactiveFillColor: TEXTFIELDLOGIN,
                      disabledColor: TEXTFIELDLOGIN,
                      activeColor: MAINCOLOR,
                      errorBorderColor: MAINCOLOR,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: TEXTFIELDLOGIN,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: APPBACKGROUND,
                    cursorColor: MAINCOLOR,
                    enabled: true,
                    enablePinAutofill: true,
                    showCursor: true,
                    hintCharacter: '_',
                    hintStyle: const TextStyle(
                        color: TEXTFIELDLOGIN,
                        decoration: TextDecoration.underline,
                        decorationColor: PINHINT),
                    pastedTextStyle: const TextStyle(
                      color: MAINCOLOR,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: TEXTFIELDLOGIN,
                      backgroundColor: TEXTFIELDLOGIN,
                    ),
                    keyboardType: TextInputType.phone,
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: pinController,
                    onCompleted: (v) {},
                    onChanged: (value) {
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      return true;
                    },
                    appContext: context,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultButtom(
                    onpressed: () {
                      Get.toNamed(Routes.forgotPasswordCreateNewPasswordScreen);
                    },
                    width: 350,
                    height: 50,
                    textColor: APPBACKGROUND,
                    borderColor: MAINCOLOR,
                    backgroundColor: MAINCOLOR,
                    textButtom: 'Verify',
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

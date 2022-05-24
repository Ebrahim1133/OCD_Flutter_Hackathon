import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ocd/view/widgets/auth_widgets/auth_text_form_field.dart';
import 'package:ocd/view/widgets/default_app_bar/default_app_bar.dart';

import '../../../../../logic/controllers/auth_controller/auth_controller.dart';
import '../../../../../utils/constrants/colors/colors.dart';
import '../../../../widgets/default_Buttom/defalt_buttom.dart';

class ForgotPasswordCreateNewPasswordScreen extends StatelessWidget {
  ForgotPasswordCreateNewPasswordScreen({Key? key}) : super(key: key);
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final controller = Get.find<AuthController>();
  final fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: DefaultAppBar(
          title: "Create New Password",
          titleColor: BLACKTEXT,
          secandicon: Text(
            "",
            style: TextStyle(color: APPBAR),
          ),
          icon: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Padding(
              padding: const EdgeInsets.all(22.0),
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
                  SvgPicture.asset('assets/images/open_lock.svg'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Enter your new password',
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
                    controller: newPasswordController,
                    obscureText: false,
                    validator: (value) {
                      if (value.toString().length < 6) {
                        return 'Password should be longer or equal to 6 characters';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'New Password',
                    type: TextInputType.visiblePassword,
                    padding: 18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthTextFromField(
                    controller: confirmPasswordController,
                    obscureText: false,
                    validator: (value) {
                      if (value.toString().length < 6) {
                        return 'Password should be longer or equal to 6 characters';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Confirm Password',
                    type: TextInputType.visiblePassword,
                    padding: 18,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultButtom(
                    onpressed: () {},
                    width: 350,
                    height: 50,
                    textColor: APPBACKGROUND,
                    borderColor: MAINCOLOR,
                    backgroundColor: MAINCOLOR,
                    textButtom: 'Submit',
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ocd/logic/controllers/auth_controller/auth_controller.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';
import 'package:ocd/utils/constrants/my_string.dart';
import 'package:ocd/view/widgets/auth_widgets/align_image_corner_down.dart';
import 'package:ocd/view/widgets/auth_widgets/auth_text_form_field.dart';
import 'package:ocd/view/widgets/auth_widgets/container_under.dart';
import 'package:ocd/view/widgets/default_Buttom/defalt_buttom.dart';

import '../../../../routes/routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.find<AuthController>();
  final fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Form(
        key: fromKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.topRight,
                  child: Stack(children: [
                    SvgPicture.asset(
                      'assets/images/background_login.svg',
                    ),
                    Container(
                        child:
                            SvgPicture.asset('assets/images/back_login2.svg'),
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.only(left: 15)),
                  ])),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: SvgPicture.asset(
                        'assets/images/logo_partion.svg',
                        // width: 81.17,
                        // height: 42.12,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Welcome ",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: BLACKTEXT,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "Back!",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: MAINCOLOR,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: BLACKTEXT,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthTextFromField(
                      controller: emailController,
                      hintText: 'E-mail',
                      padding: 18,
                      type: TextInputType.emailAddress,
                      obscureText: false,
                      validator: (value) {
                        if (!RegExp(validationEmail).hasMatch(value)) {
                          return 'Invalid email';
                        } else {
                          return null;
                        }
                      },
                      suffixIcon: const Text(""),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GetBuilder<AuthController>(builder: (_) {
                      return AuthTextFromField(
                        controller: passwordController,
                        obscureText: controller.isVisibilty ? false : true,
                        type: TextInputType.visiblePassword,
                        padding: 18,
                        validator: (value) {
                          if (value.toString().length < 6) {
                            return 'Password should be longer or equal to 6 characters';
                          } else {
                            return null;
                          }
                        },
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.visibility();
                          },
                          icon: controller.isVisibilty
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: HINTTEXTFORMFIELD,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: HINTTEXTFORMFIELD,
                                ),
                        ),
                      );
                    }),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.forgotPasswordSendEmailScreen);
                        },
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: MAINCOLOR,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: DefaultButtom(
                  onpressed: () {
                    Get.toNamed(Routes.mainScreen);
                  },
                  textColor: APPBACKGROUND,
                  width: 350,
                  height: 50,
                  borderColor: MAINCOLOR,
                  backgroundColor: MAINCOLOR,
                  textButtom: 'Login',
                ),
              ),
              ContainerUnder(
                textbuttom: 'Sign Up',
                text: 'Don’t Have an Account? ',
                onPressed: () {
                  Get.offNamed(Routes.signUpScreen);
                },
              ),
              const ImageDownConcer(),
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ocd/logic/controllers/auth_controller/auth_controller.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';
import 'package:ocd/utils/constrants/my_string.dart';
import 'package:ocd/view/widgets/auth_widgets/container_under.dart';

import '../../../routes/routes.dart';
import '../../widgets/auth_widgets/auth_text_form_field.dart';
import '../../widgets/auth_widgets/check_widget.dart';
import '../../widgets/auth_widgets/defalt_buttom.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
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
                    SvgPicture.asset('assets/images/background_login.svg'),
                    Container(
                        child:
                            SvgPicture.asset('assets/images/back_login2.svg'),
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.only(left: 15)),
                  ])),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Hello, ",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: BLACKTEXT,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "Friend!",
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
                        "Sign Up",
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
                      controller: nameController,
                      hintText: 'Full Name',
                      obscureText: false,
                      type: TextInputType.name,
                      prefixIcon: ImageIcon(
                        AssetImage("assets/icons/user 1.png"),
                        color: HINTTEXTFORMFIELD,
                        size: 24,
                      ),
                      validator: (value) {
                        if (!RegExp(validationName).hasMatch(value)) {
                          return 'Invalid Name';
                        } else {
                          return null;
                        }
                      },
                      suffixIcon: const Text(""),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AuthTextFromField(
                      controller: emailController,
                      hintText: 'E-mail',
                      type: TextInputType.emailAddress,
                      obscureText: false,
                      prefixIcon: const ImageIcon(
                        AssetImage("assets/icons/envelope 1.png"),
                        color: HINTTEXTFORMFIELD,
                        size: 24,
                      ),
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
                        validator: (value) {
                          if (value.toString().length < 6) {
                            return 'Password should be longer or equal to 6 characters';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: const ImageIcon(
                          AssetImage("assets/icons/lock 1.png"),
                          color: HINTTEXTFORMFIELD,
                          size: 24,
                        ),
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
                    const SizedBox(
                      height: 15,
                    ),
                    AuthTextFromField(
                      controller: phoneController,
                      hintText: 'Phone number',
                      type: TextInputType.phone,
                      obscureText: false,
                      prefixIcon: const ImageIcon(
                        AssetImage("assets/icons/phone.png"),
                        color: HINTTEXTFORMFIELD,
                        size: 24,
                      ),
                      validator: (value) {
                        if (!RegExp(validationPhone).hasMatch(value)) {
                          return 'Invalid Phone number';
                        } else {
                          return null;
                        }
                      },
                      suffixIcon: const Text(""),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AuthTextFromField(
                      controller: addressController,
                      hintText: 'Address',
                      obscureText: false,
                      type: TextInputType.text,
                      prefixIcon: ImageIcon(
                        AssetImage("assets/icons/map-pin.png"),
                        color: HINTTEXTFORMFIELD,
                        size: 24,
                      ),
                      validator: (value) {
                        if (!RegExp(validationName).hasMatch(value)) {
                          return 'Invalid Address';
                        } else {
                          return null;
                        }
                      },
                      suffixIcon: const Text(""),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CheckWidget(
                      onPressed: () {
                        Get.toNamed(Routes.privacyPolicyScreen);
                      },
                    ),
                  ],
                ),
              ),
              Center(
                child: DefaultButtom(
                  onpressed: () {},
                  width: 350,
                  height: 50,
                  textColor: APPBACKGROUND,
                  borderColor: MAINCOLOR,
                  backgroundColor: MAINCOLOR,
                  textButtom: 'Sign Up',
                ),
              ),
              ContainerUnder(
                text: 'Already Have an Account?',
                textbuttom: 'Login',
                onPressed: () {
                  Get.offNamed(Routes.loginScreen);
                },
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  color: APPBACKGROUND,
                  child: Stack(children: [
                    Container(
                        child: SvgPicture.asset(
                            'assets/images/Rectangle 2664.svg'),
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(right: 15)),
                    Container(
                        child: SvgPicture.asset(
                            'assets/images/Rectangle 2665.svg'),
                        margin: EdgeInsets.only(top: 35),
                        padding: EdgeInsets.only(right: 15)),
                  ])),
            ],
          ),
        ),
      )),
    );
  }
}

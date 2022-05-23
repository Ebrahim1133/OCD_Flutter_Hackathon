import 'package:get/get.dart';
import 'package:ocd/logic/bindings/auth_binding/auth_biniding.dart';
import 'package:ocd/logic/bindings/onboarding_binding/onboarding_binding.dart';
import 'package:ocd/view/screens/forgot_password_screens/forgot_password_create_new_password_screen/forgot_password_create_new_password_screen.dart';
import 'package:ocd/view/screens/forgot_password_screens/forgot_password_send_email_screen/forgot_password_send_email_screen.dart';
import 'package:ocd/view/screens/forgot_password_screens/forgot_password_verify_email_screen/forgot_password_verify_email_screen.dart';
import 'package:ocd/view/screens/login_screen/login_screen.dart';
import 'package:ocd/view/screens/main_screen/main_screen.dart';
import 'package:ocd/view/screens/onboared_screen/onboarding_screen1.dart';
import 'package:ocd/view/screens/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:ocd/view/screens/sign_up_screen/sign_up_screen.dart';
import 'package:ocd/view/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  //initialRoute

  static const splashScreen = Routes.splashScreen;
  static const onboardScreen1 = Routes.onboardScreen1;
  static const mainScreen = Routes.mainScreen;
  static const loginScreen = Routes.loginScreen;
  static const signUpScreen = Routes.signUpScreen;
  static const forgotPasswordSendEmailScreen =
      Routes.forgotPasswordSendEmailScreen;
  static const forgotPasswordVerifyEmailScreen =
      Routes.forgotPasswordVerifyEmailScreen;
  static const forgotPasswordCreateNewPasswordScreen =
      Routes.forgotPasswordCreateNewPasswordScreen;
  static const privacyPolicyScreen = Routes.privacyPolicyScreen;

  //getPages

  static final routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.onboardScreen1,
      page: () => OnBoaredScreen1(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordSendEmailScreen,
      page: () => ForgotPasswordSendEmailScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordVerifyEmailScreen,
      page: () => ForgotPasswordVerifyEmailScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordCreateNewPasswordScreen,
      page: () => ForgotPasswordCreateNewPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.privacyPolicyScreen,
      page: () => const PrivacyPolicyScreen(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => const MainScreen(),
    ),
  ];
}

class Routes {
  static const splashScreen = '/splashScreen';
  static const onboardScreen1 = '/onboardScreen1';
  static const mainScreen = '/mainScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordSendEmailScreen = '/forgotPasswordSendEmailScreen';
  static const forgotPasswordVerifyEmailScreen =
      '/forgotPasswordVerifyEmailScreen';
  static const forgotPasswordCreateNewPasswordScreen =
      '/forgotPasswordCreateNewPasswordScreen';
  static const privacyPolicyScreen = '/privacyPolicyScreen';
}

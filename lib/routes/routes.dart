import 'package:get/get.dart';
import 'package:ocd/logic/bindings/auth_binding/auth_biniding.dart';
import 'package:ocd/logic/bindings/interview_binding/interview_binding.dart';
import 'package:ocd/logic/bindings/main_binding/main_binding.dart';
import 'package:ocd/logic/bindings/onboarding_binding/onboarding_binding.dart';
import 'package:ocd/view/screens/course_fails_screen/course_fails_screen.dart';
import 'package:ocd/view/screens/home_screen/home_screen.dart';
import 'package:ocd/view/screens/interview_screens/hr_interview_screen/hr_interview_screen.dart';
import 'package:ocd/view/screens/log_out_pop_up_screen/log_out_pop_up_screen.dart';
import 'package:ocd/view/screens/main_screen/main_screen.dart';
import 'package:ocd/view/screens/my_courses_screen/my_courses_screen.dart';
import 'package:ocd/view/screens/profile_screen/profile_screen.dart';
import 'package:ocd/view/screens/splash_screen/splash_screen.dart';

import '../view/screens/auth_screens/forgot_password_screens/forgot_password_create_new_password_screen/forgot_password_create_new_password_screen.dart';
import '../view/screens/auth_screens/forgot_password_screens/forgot_password_send_email_screen/forgot_password_send_email_screen.dart';
import '../view/screens/auth_screens/forgot_password_screens/forgot_password_verify_email_screen/forgot_password_verify_email_screen.dart';
import '../view/screens/auth_screens/login_screen/login_screen.dart';
import '../view/screens/auth_screens/onboared_screen/onboarding_screen1.dart';
import '../view/screens/auth_screens/privacy_policy_screen/privacy_policy_screen.dart';
import '../view/screens/auth_screens/sign_up_screen/sign_up_screen.dart';
import '../view/screens/course_screen_after_complete_course_registration/course_screen_after_complete_course_registration.dart';

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
  static const homeScreen = Routes.homeScreen;
  static const myCoursesScreen = Routes.myCoursesScreen;
  static const profileScreen = Routes.profileScreen;
  static const logOutPopUpScreen = Routes.logOutPopUpScreen;
  static const hrInterviewScreen = Routes.hrInterviewScreen;
  static const courseScreenAfterCompleteCourseRegistration =
      Routes.courseScreenAfterCompleteCourseRegistration;
  static const courseFailsScreen = Routes.courseFailsScreen;

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
        page: () => MainScreen(),
        bindings: [MainBininding()]),
    GetPage(name: Routes.homeScreen, page: () => HomeScreen(), bindings: []),
    GetPage(
        name: Routes.myCoursesScreen,
        page: () => MyCoursesScreen(),
        bindings: []),
    GetPage(
        name: Routes.profileScreen, page: () => ProfileScreen(), bindings: []),
    GetPage(
        name: Routes.logOutPopUpScreen,
        page: () => LogOutPopUpScreen(),
        bindings: []),
    GetPage(
      name: Routes.hrInterviewScreen,
      page: () => HrInterviewScreen(),
      bindings: [InterviewBinding()],
    ),
    GetPage(
      name: Routes.hrInterviewScreen,
      page: () => HrInterviewScreen(),
      bindings: [InterviewBinding()],
    ),
    GetPage(
      name: Routes.courseScreenAfterCompleteCourseRegistration,
      page: () => CourseScreenAfterCompleteCourseRegistration(),
    ),
    GetPage(
      name: Routes.courseFailsScreen,
      page: () => CourseFailsScreen(),
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
  static const homeScreen = '/homeScreen';
  static const myCoursesScreen = '/myCoursesScreen';
  static const profileScreen = '/profileScreen';
  static const logOutPopUpScreen = '/logOutPopUpScreen';
  static const hrInterviewScreen = '/hrInterviewScreen';
  static const courseScreenAfterCompleteCourseRegistration =
      '/courseScreenAfterCompleteCourseRegistration';
  static const courseFailsScreen = '/courseFailsScreen';
}

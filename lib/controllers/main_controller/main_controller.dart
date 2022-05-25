import 'package:get/get.dart';

import '../../../view/screens/home_screen/home_screen.dart';
import '../../../view/screens/my_courses_screen/my_courses_screen.dart';
import '../../../view/screens/profile_screen/profile_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  /// list of tabs screens using to Navgiate to 3 screen in bottomNavBar
  var tabs = [HomeScreen(), MyCoursesScreen(), ProfileScreen()].obs;

  /// list of titles Appbars of main screens (homeScreen - MyCoursesScreen - MyProfileScreen)
  var title = [
    "",
    "My Courses",
    "My Profile",
  ].obs;
}

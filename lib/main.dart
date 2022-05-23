import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ocd/routes/routes.dart';
import 'package:ocd/utils/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ODC',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.routes,
    );
  }
}

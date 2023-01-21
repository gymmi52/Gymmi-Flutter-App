import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:gymmi/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:gymmi/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:gymmi/src/utils/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: OnBoardingScreen(),
    );
  }
}

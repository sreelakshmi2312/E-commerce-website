import 'package:flutter/material.dart';
import '../utils/theme/theme.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';

void main() {

  //ToDo : await splash screen 
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-commerce Application',
       themeMode: ThemeMode.system,
       theme:TAppTheme.lightTheme,
       darkTheme: TAppTheme.darkTheme,
       home:OnBoardingScreen(),
    );
  }
}


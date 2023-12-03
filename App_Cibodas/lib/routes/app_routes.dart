import 'package:flutter/material.dart';
import 'package:mohammad_yusuf_s_application9/presentation/welcome_screen/welcome_screen.dart';
import 'package:mohammad_yusuf_s_application9/presentation/home_screen/home_screen.dart';
import 'package:mohammad_yusuf_s_application9/presentation/wisata_container_screen/wisata_container_screen.dart';
import 'package:mohammad_yusuf_s_application9/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String homeScreen = '/home_screen';

  static const String wisataPage = '/wisata_page';

  static const String wisataContainerScreen = '/wisata_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    homeScreen: (context) => HomeScreen(),
    wisataContainerScreen: (context) => WisataContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

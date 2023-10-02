import 'package:uwi_attendance/screens/login_screen/login_screen.dart';
import 'package:uwi_attendance/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'screens/home_screen/home_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};

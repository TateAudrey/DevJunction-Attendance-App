import 'package:dev_junction_attendance_app/screens/sign_in/sign_in.dart';
import 'package:dev_junction_attendance_app/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {

  static final Map<String, WidgetBuilder> routes = {

    WelcomeScreen.routeName: (context) => const WelcomeScreen(),
    SignIn.routeName: (context) => const SignIn()

  };
}
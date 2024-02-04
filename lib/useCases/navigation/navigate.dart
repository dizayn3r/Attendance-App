import 'package:attendance_app/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../ui/screens/login/login_screen.dart';
import '../../ui/screens/signUp/sign_up_screen.dart';

class Navigate {
  // sign up route
  static signUp(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  // login route
  static login(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  // home route
  static home(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}

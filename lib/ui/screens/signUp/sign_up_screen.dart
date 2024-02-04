import 'package:attendance_app/ui/screens/signUp/moduleWidget/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../useCases/navigation/navigate.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double screenWidth = 0;
  double screenHeight = 0;

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SignUpForm(),
              const Divider(),
              Container(
                height: kToolbarHeight,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    TextButton(
                      onPressed: () => Navigate.login(context),
                      child: const Text("Login"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

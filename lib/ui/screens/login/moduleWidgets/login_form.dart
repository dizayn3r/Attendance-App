import 'package:flutter/material.dart';

import '../../../../useCases/navigation/navigate.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: "Email"),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: const InputDecoration(hintText: "Password"),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigate.home(context);
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}

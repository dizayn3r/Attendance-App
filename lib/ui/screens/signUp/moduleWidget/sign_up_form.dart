import 'package:attendance_app/services/auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(hintText: "Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Name";
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "Email"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Email";
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: "Password"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Password";
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: confirmPasswordController,
              decoration: const InputDecoration(hintText: "Confirm Password"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Password";
                }
                return null;
              },
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () async {
                bool isValid = formKey.currentState!.validate();
                AuthMethods.signUpWithEmailAndPassword(
                  context: context,
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
              },
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}

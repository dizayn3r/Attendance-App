import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text, bool status) {
  SnackBar snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    showCloseIcon: true,
    backgroundColor:
        status ? Colors.green : Theme.of(context).colorScheme.error,
    content: Text(text),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

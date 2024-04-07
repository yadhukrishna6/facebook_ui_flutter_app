import 'package:flutter/material.dart';

Widget hederButton({
  required String buttonText,
  required IconData buttonIcon,
  required Function() buttonAction,
  required Color buttonColor,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
    label: Text(buttonText),
  );
}

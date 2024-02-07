import 'package:flutter/material.dart';

class AppStyles {
  static final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
}

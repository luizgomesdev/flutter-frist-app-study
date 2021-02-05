import 'package:Flutter/controllers/appController.dart';
import 'package:flutter/material.dart';

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}

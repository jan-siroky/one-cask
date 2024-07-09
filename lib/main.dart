import 'package:flutter/material.dart';
import 'package:one_cask/core/router_config.dart';
import 'package:one_cask/core/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConfig(
      validationMessages: {
        ValidationMessage.required: (_) => 'This field is required',
        ValidationMessage.email: (_) => 'Invalid email address',
        ValidationMessage.minLength: (error) =>
            'This field must have at least ${(error as Map)['requiredLength']} characters'
      },
      child: MaterialApp.router(
        title: 'One Cask',
        theme: themeData,
        routerConfig: router,
      ),
    );
  }
}

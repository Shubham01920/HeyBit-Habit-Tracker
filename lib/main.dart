import 'package:flutter/material.dart';
import 'package:habit_tracker/auth/login_page.dart';
import 'package:habit_tracker/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginPage(),
    );
  }
}

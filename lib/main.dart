import 'package:flutter/material.dart';
import 'package:task_support_3/layout/home_layout.dart';
import 'package:task_support_3/modules/home/home_screen.dart';
import 'package:task_support_3/modules/login/login_screen.dart';
import 'package:task_support_3/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Splash(),
    );
  }
}


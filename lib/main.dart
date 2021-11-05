import 'package:bmi_calculator/modules/bmi_result/bmi_result_screen.dart';
import 'package:bmi_calculator/modules/bmi/bmi_screen.dart';
import 'package:bmi_calculator/modules/login/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );
  }
}

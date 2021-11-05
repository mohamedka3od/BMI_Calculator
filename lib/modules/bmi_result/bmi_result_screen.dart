import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double result;
  final int age;
  final bool isMale;

  const BmiResultScreen({
    Key? key,
    required this.result,
    required this.age,
    required this.isMale
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left) ,
          onPressed: () {
            Navigator.pop(context);
          },
        ) ,
        title: const Text(
          'RESULT'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Result : ${result.round()}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

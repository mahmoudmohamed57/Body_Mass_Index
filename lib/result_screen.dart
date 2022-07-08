import 'dart:math';

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale;
  final int age, weight;
  final double height;

  const ResultScreen({
    Key? key,
    required this.isMale,
    required this.height,
    required this.age,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(140, 6, 40, 61),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(140, 19, 99, 223),
        title: const Text(
          'BMI Result',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Healthiness : $resultAnswer',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'BMI : ${(weight / pow(height / 100, 2)).toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Height : ${height.round()}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Weight : $weight',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String get resultAnswer {
    double result = weight / pow(height / 100, 2);
    if (result < 18.5) {
      return 'Underweight';
    } else if (result < 25.0) {
      return 'Normal weight';
    } else if (result < 30.0) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }
}

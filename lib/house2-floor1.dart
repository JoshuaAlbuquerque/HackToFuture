import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';
import 'dart:math';

final random = Random();
final num = random.nextInt(9) + 13;
final time = random.nextInt(5) + 20;

class House2_floor1 extends StatelessWidget {
  const House2_floor1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

      appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Venice House',
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.white,
          fontFamily: 'Cabin',
        ),
      ),
      backgroundColor: const Color(0xFF5e60ce),
    ),


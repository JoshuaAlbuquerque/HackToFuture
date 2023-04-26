import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();
final num = random.nextInt(9) + 13;
final time = random.nextInt(5) + 20;

class House1 extends StatelessWidget {
  const House1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Tokyo House',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontFamily: 'Cabin',
            ),
          ),
          backgroundColor: const Color(0xFFffd93d),
        ),
        body: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(0),
          constrained: false,
          scaleEnabled: false,
          child: Image.asset("assets/venue.png"),
          ),
         ),
    );
  }
}

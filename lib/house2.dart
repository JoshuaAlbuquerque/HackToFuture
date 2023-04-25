import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';

class House2 extends StatelessWidget {
  const House2({Key? key}) : super(key: key);

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
          backgroundColor: const Color(0xFF3C096C),
        ),

        body:Builder(builder: (context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle the click on the first image
                          },
                          child: Image.asset('assets/room2.png'),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click on the second image
                          },
                          child: Image.asset('assets/room1.png'),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/room2.png'),
                        Image.asset('assets/room1.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
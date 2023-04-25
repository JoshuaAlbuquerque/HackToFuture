import 'package:flutter/material.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';
import 'package:css_colors/css_colors.dart';
import 'profile.dart';
import 'house2.dart';
import 'house4.dart';

 void main() {
   runApp(const MaterialApp(
     home: Home(),
   ),
   );
 }

  class Home extends StatelessWidget {
    const Home({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(

        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'EcoVision',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontFamily: 'Cabin',
              ),
            ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person),
              tooltip: "Save Todo and Return to List",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ),
          ],

          backgroundColor: CSSColors.forestGreen,
      ),


        body: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    width: 500,
                    height: 500,
                    child: SizedBox(
                      width: 500,
                      height: 500,

                    child: GridButton(
                      borderColor: Colors.lightBlue[50],
                      borderWidth: 25,
                      onPressed: (dynamic val) {},
                      items: [
                        const [
                          GridButtonItem(
                              child: Text(
                                'test',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],

                          [
                          GridButtonItem(
                            title: "Red",
                            color: Colors.red.withOpacity(0.8),
                            borderRadius: const Radius.circular(25).x,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => const Profile()),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/house.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 50,
                                    bottom: 0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'test',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          GridButtonItem(
                            title: "Blue",
                            color: Colors.blue.withOpacity(0.8),
                            borderRadius: const Radius.circular(25).x,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => const House2()),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/arrow.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 50,
                                    bottom: 0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'test',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],

                        [
                          GridButtonItem(
                            title: "Green",
                            color: Colors.green.withOpacity(0.8),
                            borderRadius: const Radius.circular(25).x,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => const House2()),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/arrow.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 50,
                                    bottom: 0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'test',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          GridButtonItem(
                            title: "Yellow",
                            color: Colors.yellow.withOpacity(0.8),
                            borderRadius: const Radius.circular(25).x,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => const House4()),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/arrow.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 50,
                                    bottom: 0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'test',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ],
                    ),
          ),
          ),
          ),
          ),
          );
        }),

        backgroundColor: Colors.lightBlue[50],
      );
    }
  }
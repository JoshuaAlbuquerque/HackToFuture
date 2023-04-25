import 'package:flutter/material.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';
import 'dart:math';

final random = Random();
final num = random.nextInt(9) + 13;
final time = random.nextInt(5) + 20;

class House3 extends StatelessWidget {
  const House3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Los Angeles House',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontFamily: 'Cabin',
            ),
          ),
          backgroundColor: const Color(0xFF3C096C),
        ),

        body: Builder(builder: (context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: 400, // set the desired width of the GridButton
                height: 500,
                child: GridButton(
                  borderColor: Colors.lightBlue[50],
                  onPressed: (dynamic val) {},
                  items: [
                    [
                      GridButtonItem(
                        title: "Los Angeles House",
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                backgroundColor: Colors.transparent,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 300,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/refri.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Show a dropdown menu
                                            showMenu(
                                              context: context,
                                              position: const RelativeRect.fromLTRB(0, 0, 0, 20),
                                              items: [
                                                const PopupMenuItem(
                                                  value: 1,
                                                  child: Text('TURN OFF'),
                                                ),
                                                PopupMenuItem(
                                                  value: 2,
                                                  child: Text('Power usage : $num Watts'),
                                                ),
                                                PopupMenuItem(
                                                  value: 3,
                                                  child: Text('Uptime - $time Hours'),
                                                ),
                                              ],
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              showMenu(
                                                context: context,
                                                position: const RelativeRect.fromLTRB(0, 0, 0, 20),
                                                items: [
                                                  const PopupMenuItem(
                                                    value: 1,
                                                    child: Text('TURN OFF'),
                                                  ),
                                                  PopupMenuItem(
                                                    value: 2,
                                                    child: Text('Power usage : $num Watts'),
                                                  ),
                                                  PopupMenuItem(
                                                    value: 3,
                                                    child: Text('Uptime - $time Hours'),
                                                  ),
                                                ],
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.grey[300],
                                              shape: const CircleBorder(),
                                              padding: const EdgeInsets.all(8),
                                              minimumSize: const Size(50, 50),
                                            ),
                                            child: const Icon(Icons.person),
                                          ),
                                          SizedBox(width: 80),
                                          ElevatedButton(
                                            onPressed: () {
                                              showMenu(
                                                context: context,
                                                position: const RelativeRect.fromLTRB(0, 0, 0, 20),
                                                items: [
                                                  const PopupMenuItem(
                                                    value: 1,
                                                    child: Text('TURN OFF'),
                                                  ),
                                                  PopupMenuItem(
                                                    value: 2,
                                                    child: Text('Power usage : $num Watts'),
                                                  ),
                                                  PopupMenuItem(
                                                    value: 3,
                                                    child: Text('Uptime - $time Hours'),
                                                  ),
                                                ],
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.grey[300],
                                              shape: const CircleBorder(),
                                              padding: const EdgeInsets.all(8),
                                              minimumSize: const Size(50, 50),
                                            ),
                                            child: const Icon(Icons.search),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 300,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/refri.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 50,
                                  bottom: 0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8),
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
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
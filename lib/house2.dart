import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';
import 'dart:math';

final random = Random();
final num = random.nextInt(9) + 13;
final time = random.nextInt(5) + 20;

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
          backgroundColor: const Color(0xFF5e60ce),
        ),

        body: Builder(builder: (context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(140, 165, 140, 140),
                        items: [
                          const PopupMenuItem(
                            value: 1,
                            child: Text('FLOOR 1'),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text('FLOOR 2'),
                          ),
                          PopupMenuItem(
                            value: 3,
                            child: Text('FLOOR 3'),
                          ),
                        ],
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5e60ce),
                      onPrimary: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      textStyle: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    child: const Text(
                      'Select Floor',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
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
                                              image: AssetImage("assets/room-down.png"),
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
                                              const SizedBox(width: 80),
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
                              child: Image.asset('assets/room-down.png'),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle the click on the second image
                              },
                              child: Image.asset('assets/long-room-right.png'),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle the click on the first image
                              },
                              child: Image.asset('assets/long-room-left.png'),
                            ),
                            GestureDetector(
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
                                              image: AssetImage("assets/room-left.png"),
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
                                          bottom: 20,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
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
                                              const SizedBox(height: 160),
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
                              child: Image.asset('assets/room-left.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
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
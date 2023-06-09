  import 'package:flutter/material.dart';
  import 'package:flutter_grid_button/flutter_grid_button.dart';
  import 'package:hackathon/house2-floor1.dart';
  import 'profile.dart';
  import 'house1.dart';
  import 'house2-floor1.dart';
  import 'house4.dart';
  import 'house3.dart';
  
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
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor:Colors.transparent,

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
            backgroundColor: const Color(0xFFabff4f),
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

                      child: Material(
                        color: Colors.transparent,
                        child: GridButton(
                          borderWidth: 25,
                          onPressed: (dynamic val) {},
                          items: [
                            const [
                              GridButtonItem(
                                child: Text(
                                  '',
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
                                color: const Color(0xFFffd93d).withOpacity(0.8 ),
                                borderRadius: const Radius.circular(25).x,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => const House1()),
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
                                color: const Color(0xFFf5bd1f).withOpacity(0.8),
                                borderRadius: const Radius.circular(25).x,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => const House2_floor1()),
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

                            ],

                            [
                              GridButtonItem(
                                title: "Green",
                                color: const Color(0xFF722e9a).withOpacity(0.8),
                                borderRadius: const Radius.circular(25).x,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => const House3()),
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
                                title: "Yellow",
                                color: const Color(0xFF522882).withOpacity(0.8),
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

                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      );
    }
  }

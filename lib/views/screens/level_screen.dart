import 'package:flutter/material.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          /// ************************ BACK GROUND IMAGE ****************************************************************************

          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asserts/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          /// ************************ SELECT PUZZLE IMAGE ****************************************************************************

          Align(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Image.asset('asserts/images/Select puzzle name.png'),
                ],
              ),
            ),
          ),

          /// ************************ 24 BUTTONS ****************************************************************************

          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 600,
              width: 320,
              child: GridView.builder(
                  itemCount: 24,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return const Stack(
                      children: [
                        Image(
                          image: AssetImage("asserts/images/button 2.png"),
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                            top: 17,
                            left: 17,
                            child: Image(
                              image: AssetImage('asserts/images/lock.png'),
                            ))
                      ],
                    );
                  }),
            ),
          ),

          /// ************************ YELLOW BUTTON ****************************************************************************

          Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  // padding: const EdgeInsets.all(2.0),
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Image.asset(
                    'asserts/images/yellow.png',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              Positioned(
                bottom: 36,
                right: 35,
                child: Image.asset(
                  'asserts/images/next arrow.png',
                  width: 40,
                  height: 40,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

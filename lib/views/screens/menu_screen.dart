import 'package:flutter/material.dart';

import '../widgets/boards/question_board.dart';
import 'level_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// ******************** BACKGROUND IMAGE ********************

          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asserts/images/background image (2).png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: Column(
                children: [
                  /// ******************** PLAY BUTTON IMAGE ********************

                  const SizedBox(height: 230),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuestionBoard(),
                          ));
                    },
                    child: const Image(
                        image: AssetImage('asserts/images/play button.png')),
                  ),

                  /// ******************** LEVEL BUTTON IMAGE ********************

                  const SizedBox(height: 30),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LevelScreen(),
                          ));
                    },
                    child: const Image(
                      image: AssetImage('asserts/images/Level Botton.png'),
                    ),
                  ),

                  /// ******************** BUY PRO BUTTON IMAGE ********************

                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const SizedBox(
                              width: 300,
                              height: 300,
                              // padding: const EdgeInsets.all(2),
                              child: AlertDialog(
                                title: Text(
                                  'Benefits of pro version',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    // foreground: ,
                                    color: Color(0xFF1F316F),
                                  ),
                                ),
                                contentPadding: EdgeInsets.zero,
                                content: Text.rich(
                                  TextSpan(
                                    text: '',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '• No Ads\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '• No wait time for hint\n   and skip\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '• Hint for every level\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '• Solution for every level\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Image(
                        image: AssetImage('asserts/images/Buy pro button.png')),
                  ),
                ],
              ),
            ),
          ),

          /// ************************ BOTTOM BAR *************************

          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('asserts/images/share icon.png')),
                  Image(
                      image: AssetImage(
                          'asserts/images/Privacy Policy Botton.png')),
                  Image(image: AssetImage('asserts/images/mail icon.png')),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

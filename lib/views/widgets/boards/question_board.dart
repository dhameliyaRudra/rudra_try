import 'package:flutter/material.dart';
import 'package:math_puzzle/views/screens/winning_screen.dart';

class QuestionBoard extends StatefulWidget {
  const QuestionBoard({super.key});

  @override
  State<QuestionBoard> createState() => _QuestionBoardState();
}

class _QuestionBoardState extends State<QuestionBoard> {
  /// List of 1 to 10 buttons ==>>>>>  only digits

  final List<String> buttonImageIndex = [
    '1 yellow.png',
    '2 yellow.png',
    '3 yellow.png',
    '4 yellow.png',
    '5 yellow.png',
    '6 yellow.png',
    '7 yellow.png',
    '8 yellow.png',
    '9 yellow.png',
    '10 yellow.png',
  ];

  bool showOverlay = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        /// background image *********************************

        image:
            DecorationImage(image: AssetImage('asserts/images/background.png')),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            SizedBox(
                height: 120,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// Appbar in 1st Icon *********************************

                      Image.asset('asserts/images/icon 1 (1).png', width: 70),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(3.5),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          /// AppBar in 2nd [middle] image *******************************

                          image: AssetImage('asserts/images/Vector.png'),
                        )),
                        child: Image.asset('asserts/images/Vector 1.png'),
                      ),

                      /// Appbar in 3rd Icon *********************************

                      Image.asset('asserts/images/icon 1 (2).png', width: 70),
                    ])),

            /// *************** question Board **************************************************

            SizedBox(
              height: 380,
              child: Image.asset('asserts/images/leval-9.png'),
            ),

            /// ********************** Input Box ******************************************

            const SizedBox(height: 15),
            Image.asset('asserts/images/question button.png'),
            Align(
                child: Column(
                    // rowIndex ---> 1st aadi line
                    children: List.generate(2, (rowIndex) {
              return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // colIndex ---> 2nd aadi line
                  children: List.generate(5, (colIndex) {
                    /// rowIndex and colIndex lakhvathi khali 1 and 2 index j print thati hti aetle rowIndex that means 1 so [rowIndex * 5 + colIndex] this formula according [1 * 5 + 5]
                    int buttonIdx = rowIndex * 5 + colIndex;

                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Stack(children: [
                            /// 10 yellow Buttons ************************

                            Image.asset('asserts/images/yellow small.png'),
                            Positioned(
                              top: 15,
                              left: 17,

                              /// 1 to 10 buttons only Digits *********************

                              child: Image.asset(
                                  // 'asserts/images/${buttonImageIndex[rowIndex]}'),
                                  'asserts/images/${buttonImageIndex[buttonIdx]}'),
                            )
                          ]),
                        ));
                  }));
            }))),

            /// ****************************************** SUBMIT ********************************************************************************

            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WinningScreen(),
                    ));
              },
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(3.5),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    /// Submit button *****************************************************

                    image: AssetImage('asserts/images/puzzle button.png'),
                  )),
                ),

                /// Submit text ***********************************************************

                Image.asset('asserts/images/Vector 2.png')
              ]),
            )
          ])),
    );
  }
}

/// (1) ********************************* LONG CODE *************************************************
library;

// import 'package:flutter/material.dart';
//
// class WinningScreen extends StatefulWidget {
//   const WinningScreen({super.key});
//
//   @override
//   State<WinningScreen> createState() => _WinningScreenState();
// }
//
// class _WinningScreenState extends State<WinningScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage('asserts/images/background.png'),
//                   fit: BoxFit.fill),
//             ),
//           ),
//           const Align(
//             alignment: Alignment.topCenter,
//             child: Column(
//               children: [
//                 SizedBox(height: 100),
//                 Image(image: AssetImage('asserts/images/Group 1064.png')),
//                 Image(image: AssetImage('asserts/images/logo.png')),
//                 // SizedBox(height: 10),
//               ],
//             ),
//           ),
//           const Align(
//             alignment: Alignment.topCenter,
//             child: Column(
//               children: [
//                 SizedBox(height: 390),
//                 SizedBox(width: 150, height: 40),
//                 Image(image: AssetImage('asserts/images/continue.png')),
//                 SizedBox(height: 20),
//                 Image(image: AssetImage('asserts/images/main menu.png')),
//                 SizedBox(height: 20),
//                 Image(image: AssetImage('asserts/images/Buy pro button.png')),
//                 SizedBox(height: 50),
//               ],
//             ),
//           ),
//           const Align(
//               alignment: Alignment.bottomCenter,
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.all(20.0),
//                     child: SizedBox(
//                       height: 70,
//                       child: Image(
//                         image: AssetImage(
//                           'asserts/images/share icon.png',
//                         ),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                 ],
//               ))
//         ],
//       ),
//       /// long code of boy [used Container for particular image]
//       // body: Container(
//       //   decoration: const BoxDecoration(
//       //     image: DecorationImage(
//       //         fit: BoxFit.fill,
//       //         image: AssetImage('asserts/images/background image winning.png')),
//       //   ),
//       //   child: Scaffold(
//       //     backgroundColor: Colors.transparent,
//       //     body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       //       Container(
//       //         margin: const EdgeInsets.only(bottom: 16.0),
//       //         decoration: const BoxDecoration(
//       //           image: DecorationImage(
//       //             image: AssetImage('asserts/images/Group 1064.png'),
//       //           ),
//       //         ),
//       //         height: 90,
//       //       ),
//       //       Container(
//       //         margin: const EdgeInsets.only(bottom: 16.0),
//       //         decoration: const BoxDecoration(
//       //           image: DecorationImage(
//       //             image: AssetImage('asserts/images/logo.png'),
//       //           ),
//       //         ),
//       //         height: 250,
//       //       ),
//       //       Container(
//       //         margin: const EdgeInsets.only(bottom: 16.0),
//       //         decoration: const BoxDecoration(
//       //           image: DecorationImage(
//       //             image: AssetImage('asserts/images/continue.png'),
//       //           ),
//       //         ),
//       //
//       //         /// button height
//       //         height: 70,
//       //       ),
//       //       Container(
//       //         margin: const EdgeInsets.only(bottom: 16.0),
//       //         decoration: const BoxDecoration(
//       //           image: DecorationImage(
//       //             image: AssetImage('asserts/images/main menu.png'),
//       //           ),
//       //         ),
//       //         height: 70,
//       //       ),
//       //       Container(
//       //         margin: const EdgeInsets.only(bottom: 16.0),
//       //         decoration: const BoxDecoration(
//       //           image: DecorationImage(
//       //             image: AssetImage('asserts/images/Buy pro button.png'),
//       //           ),
//       //         ),
//       //         height: 70,
//       //       ),
//       //      SizedBox(height: 20),
//       //       Container(
//       //         // margin: const EdgeInsets.only(bottom: 16.0),
//       //         decoration: const BoxDecoration(
//       //           image: DecorationImage(
//       //             image: AssetImage('asserts/images/share icon.png'),
//       //           ),
//       //         ),
//       //         height: 170,
//       //       ),
//       //     ]),
//       //   ),
//       // ),
//     );
//   }
// }

/// (2) ********************************* SHORT CODE *************************************************

import 'package:flutter/material.dart';
import 'package:math_puzzle/views/screens/menu_screen.dart';
import 'package:math_puzzle/views/widgets/boards/question_board.dart';

class WinningScreen extends StatefulWidget {
  const WinningScreen({super.key});

  @override
  State<WinningScreen> createState() => _WinningScreenState();
}

class _WinningScreenState extends State<WinningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asserts/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(height: 100),
                Image(image: AssetImage('asserts/images/Group 1064.png')),
                Image(image: AssetImage('asserts/images/logo.png')),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                /// ******************** CONTINUE BUTTON *******************************

                const SizedBox(height: 390),
                const SizedBox(height: 40, width: 150),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionBoard()),
                    );
                  },
                  child: const Image(
                      image: AssetImage('asserts/images/continue.png')),
                ),

                /// ******************** MAIN MENU BUTTON *******************************

                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MenuScreen(),
                        ),
                      );
                    },
                    child: const Image(
                        image: AssetImage('asserts/images/main menu.png'))),
                const SizedBox(height: 20),

                /// ******************** BUY PRO BUTTON *******************************

                const Image(
                    image: AssetImage('asserts/images/Buy pro button.png')),
                const SizedBox(height: 50),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 70,
                child: Image.asset('asserts/images/share icon.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

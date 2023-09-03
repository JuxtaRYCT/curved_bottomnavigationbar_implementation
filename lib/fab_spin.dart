// import 'package:flutter/material.dart';
// _navbarbuild() {
//     return BottomAppBar(
//       elevation: 0,
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       shape: const CircularNotchedRectangle(),
//       child: Container(
//         height: 80,
//         width: 300,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color.fromARGB(255, 239, 65, 54),
//               Color.fromARGB(255, 251, 176, 64),
//             ],
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             ItemButton(
//               pagename: pages[0],
//               pageicon: Icons.home,
//               currentSelected: currentScreen == 0,
//               onTap: () {
//                 setState(
//                   () {
//                     currentScreen = 0;
//                   },
//                 );
//               },
//             ),
//             ItemButton(
//               pagename: pages[1],
//               pageicon: Icons.flag,
//               currentSelected: currentScreen == 1,
//               onTap: () {
//                 setState(
//                   () {
//                     currentScreen = 1;
//                   },
//                 );
//               },
//             ),
//             const SizedBox(width: 48),
//             ItemButton(
//               pagename: pages[2],
//               pageicon: Icons.leaderboard,
//               currentSelected: currentScreen == 2,
//               onTap: () {
//                 setState(
//                   () {
//                     currentScreen = 2;
//                   },
//                 );
//               },
//             ),
//             ItemButton(
//               pagename: pages[3],
//               pageicon: Icons.person_2_outlined,
//               currentSelected: currentScreen == 3,
//               onTap: () {
//                 setState(
//                   () {
//                     currentScreen = 3;
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

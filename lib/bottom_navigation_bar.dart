import 'package:curvednavbar_implementation/items.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final pages = ['Home', 'Timeline', 'Leaderboard', 'Profile'];

class _BottomNavBarState extends State<BottomNavBar> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  Color.fromARGB(255, 239, 65, 54),
                  Color.fromARGB(255, 251, 176, 64)
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 239, 65, 54),
                  Color.fromARGB(255, 251, 176, 64),
                ],
              ),
            ),
            child: const Icon(
              Icons.question_mark_rounded,
              size: 32,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _navbarbuild(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  _navbarbuild() {
    return BottomAppBar(
      elevation: 0,
      notchMargin: 10.0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ItemButton(
            pagename: pages[0],
            pageicon: Icons.home,
            currentSelected: currentScreen == 0,
            onTap: () {
              setState(
                () {
                  currentScreen = 0;
                },
              );
            },
          ),
          ItemButton(
            pagename: pages[1],
            pageicon: Icons.flag,
            currentSelected: currentScreen == 1,
            onTap: () {
              setState(
                () {
                  currentScreen = 1;
                },
              );
            },
          ),
          const SizedBox(width: 48),
          ItemButton(
            pagename: pages[2],
            pageicon: Icons.leaderboard,
            currentSelected: currentScreen == 2,
            onTap: () {
              setState(
                () {
                  currentScreen = 2;
                },
              );
            },
          ),
          ItemButton(
            pagename: pages[3],
            pageicon: Icons.person_2_outlined,
            currentSelected: currentScreen == 3,
            onTap: () {
              setState(
                () {
                  currentScreen = 3;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:curvednavbar_implementation/items.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'dart:ui' as ui;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final pages = ['Home', 'Timeline', 'Leaderboard', 'Profile'];

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation degOneTranslationAnimation;
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    degOneTranslationAnimation =
        Tween(begin: 0.0, end: 1.0).animate(animationController);
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  int currentScreen = 0;

  double radtodeg(double radian) {
    double unitrad = 57.2957795;
    return radian / unitrad;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      // theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: size.width,
                height: 75,
                // decoration: const BoxDecoration(
                //   gradient: LinearGradient(
                //     begin: Alignment.bottomCenter,
                //     end: Alignment.topCenter,
                //     colors: [
                //       Color.fromARGB(255, 239, 65, 54),
                //       Color.fromARGB(255, 251, 176, 64),
                //     ],
                //   ),
                // ),
                child: Stack(
                  children: <Widget>[
                    CustomPaint(
                      size: Size(size.width, (size.width * 0.2).toDouble()),
                      painter: NotchedBarPainter(),
                    ),
                    Container(
                      width: size.width,
                      height: (size.width * 0.19466666666666665).toDouble(),
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
                              print('pressed');
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
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Transform.translate(
                        offset: Offset.fromDirection(radtodeg(183),
                            degOneTranslationAnimation.value * 110),
                        child: CircularFAB(
                          color: const Color.fromARGB(255, 252, 243, 197),
                          width: 35,
                          height: 35,
                          icon: const Icon(
                            MaterialCommunityIcons.numeric_1,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Transform.translate(
                        offset: Offset.fromDirection(radtodeg(208),
                            degOneTranslationAnimation.value * 110),
                        child: CircularFAB(
                          color: const Color.fromARGB(255, 252, 243, 197),
                          width: 35,
                          height: 35,
                          icon: const Icon(
                            MaterialCommunityIcons.numeric_2,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Transform.translate(
                        offset: Offset.fromDirection(radtodeg(233),
                            degOneTranslationAnimation.value * 110),
                        child: CircularFAB(
                          color: const Color.fromARGB(255, 252, 243, 197),
                          width: 35,
                          height: 35,
                          icon: const Icon(
                            MaterialCommunityIcons.numeric_3,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Transform.translate(
                        offset: Offset.fromDirection(radtodeg(258),
                            degOneTranslationAnimation.value * 110),
                        child: CircularFAB(
                          color: const Color.fromARGB(255, 252, 243, 197),
                          width: 35,
                          height: 35,
                          icon: const Icon(
                            MaterialCommunityIcons.numeric_4,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Transform.translate(
                        offset: Offset.fromDirection(radtodeg(283),
                            degOneTranslationAnimation.value * 110),
                        child: CircularFAB(
                          color: const Color.fromARGB(255, 252, 243, 197),
                          width: 35,
                          height: 35,
                          icon: const Icon(
                            MaterialCommunityIcons.numeric_5,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Transform.translate(
                        offset: Offset.fromDirection(radtodeg(308),
                            degOneTranslationAnimation.value * 110),
                        child: CircularFAB(
                          color: const Color.fromARGB(255, 252, 243, 197),
                          width: 35,
                          height: 35,
                          icon: const Icon(
                            MaterialCommunityIcons.numeric_6,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Transform.translate(
                        offset: Offset.fromDirection(radtodeg(333),
                            degOneTranslationAnimation.value * 110),
                        child: CircularFAB(
                          color: const Color.fromARGB(255, 252, 243, 197),
                          width: 35,
                          height: 35,
                          icon: const Icon(
                            MaterialCommunityIcons.numeric_7,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Transform.translate(
                        offset: Offset.fromDirection(radtodeg(358),
                            degOneTranslationAnimation.value * 110),
                        child: CircularFAB(
                          color: const Color.fromARGB(255, 252, 243, 197),
                          width: 35,
                          height: 35,
                          icon: const Icon(
                            MaterialCommunityIcons.numeric_8,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CircularFAB(
                        color: const Color.fromARGB(255, 239, 66, 54),
                        width: 70,
                        height: 70,
                        icon: const Icon(
                          Icons.question_mark_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print('Pressed');
                          if (animationController.isCompleted) {
                            animationController.reverse();
                          } else {
                            animationController.forward();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotchedBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.003509151);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.003509151);
    path_0.lineTo(size.width * 0.6852800, size.height * 0.003509151);
    path_0.cubicTo(
        size.width * 0.6465627,
        size.height * 0.002016247,
        size.width * 0.6253333,
        size.height * 0.04728836,
        size.width * 0.5946667,
        size.height * 0.1917808);
    path_0.cubicTo(
        size.width * 0.5508347,
        size.height * 0.3983110,
        size.width * 0.5316267,
        size.height * 0.4480425,
        size.width * 0.4986667,
        size.height * 0.4452055);
    path_0.cubicTo(
        size.width * 0.4661760,
        size.height * 0.4548521,
        size.width * 0.4448000,
        size.height * 0.3585726,
        size.width * 0.4000000,
        size.height * 0.1712329);
    path_0.cubicTo(
        size.width * 0.3637493,
        size.height * 0.01965082,
        size.width * 0.3351173,
        size.height * -0.006857123,
        size.width * 0.2915147,
        size.height * 0.003509151);
    path_0.lineTo(0, size.height * 0.003509151);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, size.height * -2.714658e-9),
        Offset(size.width * 0.5000000, size.height), [
      const Color(0xffEF4136).withOpacity(1),
      const Color(0xffFAA83F).withOpacity(1)
    ], [
      0.0917048,
      1
    ]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CircularFAB extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final VoidCallback onPressed;

  const CircularFAB(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.icon,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(
        icon: icon,
        enableFeedback: true,
        onPressed: onPressed,
      ),
    );
  }
}

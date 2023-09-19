import 'package:curvednavbar_implementation/items.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final pages = ['Home', 'Timeline', 'Leaderboard', 'Profile'];

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  int currentScreen = 0;

  double radtodeg(double radian) {
    double unitrad = 57.2957795;
    return radian / unitrad;
  }

  late AnimationController animationController;
  late Animation degOneTranslationAnimation;

  // @override
  // void initState() {
  //   super.initState();
  //   animationController =
  //       AnimationController(vsync: this, duration: Duration(milliseconds: 250));
  //   degOneTranslationAnimation =
  //       Tween(begin: 0.0, end: 1.0).animate(animationController);
  //   super.initState();
  //   animationController.addListener(() {
  //     setState(() {});
  //   });
  // }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    degOneTranslationAnimation =
        Tween(begin: 0.0, end: 1.0).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
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
                    Center(
                      heightFactor: 0,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Stack(
                            children: <Widget>[
                              Transform.translate(
                                offset: Offset.fromDirection(radtodeg(190),
                                    degOneTranslationAnimation.value * 100),
                                child: CircularFAB(
                                  color: Colors.white,
                                  width: 40,
                                  height: 40,
                                  icon: const Icon(
                                    Icons.one_k,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Transform.translate(
                                offset: Offset.fromDirection(radtodeg(220),
                                    degOneTranslationAnimation.value * 100),
                                child: CircularFAB(
                                  color: Colors.white,
                                  width: 40,
                                  height: 40,
                                  icon: const Icon(
                                    Icons.one_k,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Transform.translate(
                                offset: Offset.fromDirection(radtodeg(250),
                                    degOneTranslationAnimation.value * 100),
                                child: CircularFAB(
                                  color: Colors.white,
                                  width: 40,
                                  height: 40,
                                  icon: const Icon(
                                    Icons.one_k,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Transform.translate(
                                offset: Offset.fromDirection(radtodeg(280),
                                    degOneTranslationAnimation.value * 100),
                                child: CircularFAB(
                                  color: Colors.white,
                                  width: 40,
                                  height: 40,
                                  icon: const Icon(
                                    Icons.one_k,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Transform.translate(
                                offset: Offset.fromDirection(radtodeg(310),
                                    degOneTranslationAnimation.value * 100),
                                child: CircularFAB(
                                  color: Colors.white,
                                  width: 40,
                                  height: 40,
                                  icon: const Icon(
                                    Icons.one_k,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Transform.translate(
                                offset: Offset.fromDirection(radtodeg(340),
                                    degOneTranslationAnimation.value * 100),
                                child: CircularFAB(
                                  color: Colors.white,
                                  width: 40,
                                  height: 40,
                                  icon: const Icon(
                                    Icons.one_k,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              CircularFAB(
                                color: const Color.fromARGB(255, 239, 66, 54),
                                width: 60,
                                height: 60,
                                icon: const Icon(
                                  Icons.question_mark_rounded,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  if (animationController.isCompleted) {
                                    animationController.reverse();
                                  } else {
                                    animationController.forward();
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
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
                    // Positioned(
                    //   right: (size.width / 2.0) - 30,
                    //   bottom: 100,
                    //   child: Stack(
                    //     children: <Widget>[
                    //       CircularFAB(
                    //         color: const Color.fromARGB(255, 239, 66, 54),
                    //         width: 60,
                    //         height: 60,
                    //         icon: const Icon(
                    //           Icons.question_mark_rounded,
                    //           color: Colors.white,
                    //         ),
                    //         onPressed: () {},
                    //       ),
                    //     ],
                    //   ),
                    // ),
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
        Offset(size.width * 0.5000000, size.height),
        [Color(0xffEF4136).withOpacity(1), Color(0xffFAA83F).withOpacity(1)],
        [0.0917048, 1]);
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
      child: IconButton(icon: icon, enableFeedback: true, onPressed: onPressed),
    );
  }
}

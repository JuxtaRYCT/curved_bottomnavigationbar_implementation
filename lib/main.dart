import 'package:curvednavbar_implementation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(Screen());

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigation Bar',
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

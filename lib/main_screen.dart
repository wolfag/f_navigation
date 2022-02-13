import 'package:f_navigation/detail_screen.dart';
import 'package:f_navigation/hero_image.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const DetailScreen(),
            ),
          );
        },
        child: const HeroImage(),
      ),
    );
  }
}

import 'package:f_navigation/detail_screen.dart';
import 'package:f_navigation/hero_image.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main screen'),
      ),
      body: GestureDetector(
        onTap: () async {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (_) => const DetailScreen(),
          //   ),
          // );
          final result = await Navigator.pushNamed(
            context,
            DetailScreen.routeName,
            arguments: DetailScreenArguments(
              'detail',
              'hello detail',
            ),
          );

          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text('$result'),
              ),
            );
        },
        child: const HeroImage(),
      ),
    );
  }
}

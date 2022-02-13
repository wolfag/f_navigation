import 'dart:html';

import 'package:f_navigation/detail_screen.dart';
import 'package:f_navigation/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition',
      initialRoute: MainScreen.routeName,
      routes: {
        MainScreen.routeName: (_) => const MainScreen(),
        DetailScreen.routeName: (_) => DetailScreen(),
      },
      // home: MainScreen(),
    );
  }
}

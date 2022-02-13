import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'heroImg',
      child: Image.network(
        'https://picsum.photos/250?image=9',
      ),
    );
  }
}

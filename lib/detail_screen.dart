import 'package:f_navigation/hero_image.dart';
import 'package:flutter/material.dart';

class DetailScreenArguments {
  final String title;
  final String message;

  DetailScreenArguments(this.title, this.message);
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as DetailScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Column(
            children: [
              const HeroImage(),
              Text(args.message),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'option 1');
                },
                child: const Text('option 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'option 2');
                },
                child: const Text('option 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

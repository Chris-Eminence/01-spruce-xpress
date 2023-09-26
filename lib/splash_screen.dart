import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Replace 'assets/Spruce Express.png' with the correct path to your PNG image
            Image.asset(
              'assets/Spruce Express.png',
              width: 300, // Set the width of the PNG image
              height: 300, // Set the height of the PNG image
            ),
          ],
        ),
      ),
    );
  }
}

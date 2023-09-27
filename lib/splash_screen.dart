import 'package:flutter/material.dart';
import 'package:spruce_xpress/unboarding_screen.dart'; // Import UnboardingScreen

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Add logic for splash screen animation or delay here
    // Example navigation to UnboardingScreen after 2 seconds:
    Future.delayed(Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => UnboardingScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // spruce xpress logo
            Image.asset(
              'assets/Spruce Express.png',
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}

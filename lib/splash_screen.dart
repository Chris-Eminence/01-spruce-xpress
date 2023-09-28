import 'package:flutter/material.dart';
import 'package:spruce_xpress/onboarding_screen.dart'; // Import OnboardingScreen

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Add logic for splash screen animation or delay here
    // Example navigation to OnboardingScreen after 7 seconds:
    Future.delayed(Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Spruce Xpress logo
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

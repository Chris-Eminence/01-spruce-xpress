import 'package:flutter/material.dart';

class PackageInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add the first image aligned to the center
            Image.asset(
              "assets/successful icon.png",
              width: 130,
              height: 130,
            ),
            SizedBox(height: 20), // Add some space between the images
            // Add the second image aligned to the center
            Image.asset(
              "assets/delivery successful.png",
              width: 350,
              height: 350,
            ),
            SizedBox(height: 30), // Add some space between the second image and the button
            SizedBox(
              width: 300, // Adjust the width here
              height: 50, // Adjust the height here
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to the HomePage when the button is pressed
                  Navigator.pop(context);
                },
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF00A651),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

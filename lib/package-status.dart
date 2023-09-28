import 'package:flutter/material.dart';

class PackageStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Custom black arrow icon with a GestureDetector for navigation back
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white, // Arrow color
                ),
              ),
            ),
            SizedBox(height: 16.0), // Add some space between the arrow and content
            Text(
              "Package Status",
              style: TextStyle(
                fontSize: 24.0, // Adjust the font size as needed
              ),
            ),
            SizedBox(height: 16.0), // Add some space between the title and content
            Text(
              "this is the package result content",
              style: TextStyle(
                fontSize: 18.0, // Adjust the font size as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spruce_xpress/onboarding_screen.dart'; // Import the OnboardingScreen

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile image, name, title, and notification icon
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/profileimage.png",
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome, John !",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Austin | #837494",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/notification.png",
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),

            // Add more widgets as needed
            SizedBox(height: 100), // Add some space between the profile info and columns

            // Create a column for the images
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImageColumn("assets/edit profile.png"),
                  buildImageColumn("assets/statement & reports.png"),
                  buildImageColumn("assets/Notification setting.png"),
                  buildImageColumn("assets/About Us.png"),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the onboarding screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnboardingScreen()), // Use the correct class name
                      );
                    },
                    child: buildImageColumn("assets/Log Out.png", width: 400, height: 80),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageColumn(String imagePath, {double width = 600, double height = 80}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
      ),
    );
  }
}

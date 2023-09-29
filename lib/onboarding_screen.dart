import 'package:flutter/material.dart';
import 'package:spruce_xpress/login-page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0; // Track the current page index

  final List<String> imagePaths = [
    'assets/Unboard page1.png',
    'assets/Unboarding-image2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Stack the image on top of the first container
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.85,
                decoration: BoxDecoration(
                  color: Color(0xFF00A651),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 500,
                child: Image.asset(
                  imagePaths[currentPage], // Use the current image path
                  fit: BoxFit.fill, // Set fit property to fill the container
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First small circular button
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentPage = 0; // Change to the first image
                  });
                },
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: currentPage == 0
                        ? Color(0xFF00A651)
                        : Color(0xFFD7F0E1), // Change color based on current page
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              // Second small circular button
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentPage = 1; // Change to the second image
                  });
                },
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: currentPage == 1
                        ? Color(0xFF00A651)
                        : Color(0xFFD7F0E1), // Change color based on current page
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20,),
              Text(
                'Your Logistics Partner For ',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Seamless Delivery.',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'We provide services for all your',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
              Text(
                'nationwide shipping needs.',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ],
          ),

          SizedBox(height: 16.0),
          Container(
            width: 350,
            height: 85,
            padding: EdgeInsets.all(14.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the LoginPage when the "Log in" button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF00A651), // Background color for login button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                ),
              ),
              child: Text(
                "Log in",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              Text(
                "Don’t have an account?",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0), // Add spacing between the two texts
              Text(
                "Sign up on our website",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0xFF00A651),
                  fontSize: 16.0,
                  decoration: TextDecoration.underline, // Add underline decoration
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: OnboardingScreen(),
  ));
}

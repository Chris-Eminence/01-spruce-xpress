import 'package:flutter/material.dart';

class UnboardingScreen extends StatelessWidget {
  const UnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center the text horizontally
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
                // You can add your content inside this container
              ),
              Container(
                width: 400, // Set custom width
                height: 400, // Set custom height
                child: Image.asset(
                  'assets/Unboard page1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
            children: [
              // First small circular button
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Color(0xFF00A651), // Change the color as needed
                  shape: BoxShape.circle,
                ),
                // You can add an icon or other content here
              ),
              SizedBox(width: 16.0), // Add space between the buttons
              // Second small circular button
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Color(0xFFD7F0E1), // Change the color as needed
                  shape: BoxShape.circle,
                ),
                // You can add an icon or other content here
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
                // Handle login button press
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
          Container(
            width: 350,
            height: 85,
            padding: EdgeInsets.all(14.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle signup button press
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFD7F0E1), // Background color for signup button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                ),
              ),
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0xFF00A651),
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

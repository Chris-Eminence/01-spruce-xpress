import 'package:flutter/material.dart';
import 'package:spruce_xpress/home-page.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/successful icon.png",
                width: 150,
                height: 150,
              ),
              SizedBox(height: 100),
              Text(
                "Login Successful",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 100),
              GestureDetector(
                onTap: () {
                  // Navigate to the HomePage when the "Continue" button is pressed
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  width: 350,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xFF00A651), // Set the background color here
                    borderRadius: BorderRadius.circular(15.0), // Set the border radius here
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:spruce_xpress/package-info.dart';

class PackageStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Add the map image at the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height /2,
              child: Image.asset(
                "assets/map.png",
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20, 20.0), // Add some space at the top
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Navigate back to the previous page
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
          ),
          SafeArea(
            // Wrap the content below the map image in a SafeArea
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 400), // Add spacing here
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset(
                      "assets/package status.png",
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: 300, // Adjust the width here
                    height: 50, // Adjust the height here
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the new page when the button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PackageInfoPage()), // Navigate to the new page
                        );
                      },
                      child: Text(
                        "View Package Info",
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
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spruce_xpress/trackpage.dart';
import 'package:spruce_xpress/profile-page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Add this line to track the current tab index

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _currentIndex,
        children: [
          // Your existing content here
          SafeArea(
            child: Column(
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

                // Existing content here
                // ...

                // Image aligned with the row
                Image.asset(
                  "assets/pickup dropoff image.png",
                  width: 370,
                  height: 180,
                ),
                SizedBox(height: 10),
                Text(
                  "Choose a service",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/Frame box.png",
                      width: 180,
                      height: 180,
                    ),
                    Image.asset(
                      "assets/Frame box2.png",
                      width: 180,
                      height: 180,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/framebox3.png",
                      width: 180,
                      height: 180,
                    ),
                    Image.asset(
                      "assets/Frame box4.png",
                      width: 180,
                      height: 180,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Add the TrackPage content here
          TrackPage(),

          // Add the ProfilePage content here
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color(0xFF00A651), // Change text color when clicked
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Track',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

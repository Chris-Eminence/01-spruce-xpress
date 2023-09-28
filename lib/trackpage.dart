import 'package:flutter/material.dart';
import 'package:spruce_xpress/package-status.dart';

class TrackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top half of the page
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/map.png",
              fit: BoxFit.cover,
            ),
          ),
          // Bottom half of the page
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 270.0,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/track image.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter your waybill number",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16.0),
                              fillColor: Colors.transparent,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFF00A651),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFF00A651),
                                ),
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            cursorColor: Color(0xFF00A651),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            // Navigate to the new page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PackageStatus()),
                            );
                          },
                          child: Container(
                            width: double.infinity, // Make the search box adjustable in width
                            height: 50.0, // Set the desired height for the search box
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: Color(0xFF00A651),
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0), // Add space between the search row and the button
                Container(
                  width: 319.0, // Set the width to 319
                  height: 54.0, // Set the height to 54
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the new page here (same as the search box)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PackageStatus()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF00A651),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      "View Package Status",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

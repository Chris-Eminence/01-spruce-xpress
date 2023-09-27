import 'package:flutter/material.dart';
import 'package:spruce_xpress/login-successful.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text at the top with color (hex: 00A651)
                Text(
                  "Hi, Welcome Back! 👋",
                  style: TextStyle(
                    color: Color(0xFF00A651),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),

                // Email/Phone Input with green border (hex: 00A651)
// Email/Phone Input with green border (hex: 00A651)
// Email/Phone Input with green border (hex: 00A651)
// Email/Phone Input with green border (hex: 00A651)
// Email/Phone Input with green border (hex: 00A651)
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xFF00A651), // Border color in normal state
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xFF00A651), // Border color in active state
                      ),
                    ),
                    labelText: "Email or Phone",
                    labelStyle: TextStyle(
                      color: Colors.grey, // Default hint text color
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black, // Default text color when typing
                  ),
                  cursorColor: Color(0xFF00A651), // Cursor color
                ),
                SizedBox(height: 16.0),

// Password Input with green border (hex: 00A651)
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xFF00A651), // Border color in normal state
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xFF00A651), // Border color in active state
                      ),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.grey, // Default hint text color
                    ),
                  ),
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.black, // Default text color when typing
                  ),
                  cursorColor: Color(0xFF00A651), // Cursor color
                ),



                SizedBox(height: 16.0),

                // Remember Password Checkbox with clickable checkmark
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {
                        // Handle the checkbox state
                      },
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(fontSize: 14.0),
                    ),
                    Spacer(),
                    // Forgotten Password text with color (hex: E86969)
                    TextButton(
                      onPressed: () {
                        // Implement forgot password logic here
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFE86969),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.0),

                Column(
                  children: [
                    Container(
                      width: 350,
                      height: 75,
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the HomePage when the "Log in" button is pressed
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginSuccess()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF00A651),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
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
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Edit Profile',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              // Navigation function goes here
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30, // Small space below the AppBar
            ),
            Center(
              child: Container(
                width: 403, // Width of the large square
                height: 440, // Height of the large square
                color: Color.fromARGB(255, 243, 242, 242), // Background color for the large square
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 88, // The height of the first rectangle
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Left and right alignment
                        children: [
                          Text(
                            "Photo de profile",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Image.asset(
        'assets/Ellipse 32.png',
        
      ),
                        ],
                      ),
                    ),
                    Container(
                      height: 88, // The height of the second rectangle
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Left and right alignment
                        children: [
                          Text(
                            "User Name",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "amani lina",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 77, 173, 133),
                            ),
                          ),
                        ],
                      ),
                    ),
                     Container(
                      height: 88, // The height of the second rectangle
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Left and right alignment
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "160 cm",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 77, 173, 133),
                            ),
                          ),
                        ],
                      ),
                    ),
                     Container(
                      height: 88, // The height of the second rectangle
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Left and right alignment
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Fermale",
                            style: TextStyle(
                              fontSize: 18,
                              color:Color.fromARGB(255, 77, 173, 133),
                            ),
                          ),
                        ],
                      ),
                    ),
                     Container(
                      height: 88, // The height of the second rectangle
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Left and right alignment
                        children: [
                          Text(
                            "Age ",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "22 Ye",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 77, 173, 133),
                            ),
                          ),
                        ],
                      ),
                    ),
                     
                    // The other rectangles can remain unchanged
                    for (int i = 5; i < 5; i++)
                      Container(
                        height: 88,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "Rectangle ${i + 1}",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                 ),
               ),
              SizedBox(
              height: 100, // Space between the large square and the buttons
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
                children: [
                  // "Cancel" button with specified style
                  ElevatedButton(
                    onPressed: () {
                      // Action for the Cancel button
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 240, 239, 239), // Red background
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0), // Rounded corners
                        ),
                      ),
                    ),
                    child: Text(
                      "   Cancel   ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black, // White text color
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16, // Space between the buttons
                  ),
                  // "Save" button with specified style
                  ElevatedButton(
                    onPressed: () {
                      // Action for the Save button
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 77, 173, 133), // Green background color
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0), // Rounded corners
                        ),
                      ),
                    ),
                    child: Text(
                      "     Save     ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // White text color
                      ),
                    ),
                  ),
              ],
             ),
           ),
           ],
 ),
  ),



         );
  }
}

           

           
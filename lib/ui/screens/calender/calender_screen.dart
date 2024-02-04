import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    width: screenWidth / 7,
                    height: screenWidth / 7,
                    alignment: Alignment.center,
                    child: Text("S"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    width: screenWidth / 7,
                    height: screenWidth / 7,
                    alignment: Alignment.center,
                    child: Text("M"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    width: screenWidth / 7,
                    height: screenWidth / 7,
                    alignment: Alignment.center,
                    child: Text("T"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    width: screenWidth / 7,
                    height: screenWidth / 7,
                    alignment: Alignment.center,
                    child: Text("W"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    width: screenWidth / 7,
                    height: screenWidth / 7,
                    alignment: Alignment.center,
                    child: Text("T"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    width: screenWidth / 7,
                    height: screenWidth / 7,
                    alignment: Alignment.center,
                    child: Text("F"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    width: screenWidth / 7,
                    height: screenWidth / 7,
                    alignment: Alignment.center,
                    child: Text("S"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

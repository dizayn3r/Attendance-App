import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  double screenWidth = 0;
  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 24.0),
                child: Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: screenWidth / 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "User Name",
                  style: TextStyle(
                    fontSize: screenWidth / 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 32.0),
                child: Text(
                  "Today's Status",
                  style: TextStyle(
                    fontSize: screenWidth / 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: screenHeight / 5,
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Check In",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: screenWidth / 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "09:30",
                            style: TextStyle(
                              fontSize: screenWidth / 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Check Out",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: screenWidth / 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "--/--",
                            style: TextStyle(
                              fontSize: screenWidth / 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                      text: "02, ",
                      style: GoogleFonts.nunito(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: screenWidth / 18,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: "Feb 2024",
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: screenWidth / 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "00:06:30 AM",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: screenWidth / 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                child: Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> key = GlobalKey();
                    return SlideAction(
                      key: key,
                      outerColor: Colors.white,
                      innerColor: Theme.of(context).colorScheme.primary,
                      text: "Slide to Check Out",
                      textStyle: TextStyle(
                        fontSize: screenWidth / 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                      ),
                      onSubmit: () {
                        key.currentState!.reset();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

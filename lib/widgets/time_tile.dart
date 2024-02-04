import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeTile extends StatelessWidget {
  const TimeTile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 500)),
      builder: (context, snapshot) {
        return Container(
          alignment: Alignment.centerLeft,
          child: Text(
            DateFormat("hh:mm:ss a").format(DateTime.now()),
            style: TextStyle(
              color: Colors.black54,
              fontSize: screenWidth / 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        );
      },
    );
  }
}

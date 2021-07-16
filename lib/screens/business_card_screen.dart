import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          //Check into mainAxisAlignment for spacing
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                height: 10,
              ),
              CircleAvatar(
                radius: avatarSize(context),
                backgroundColor: Colors.black,
              ),
              Text(
                'Jeff Porter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Jeff Porter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ),
      )
    );
  }

  double avatarSize(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return MediaQuery.of(context).size.width * 0.1;
    } else {
      return MediaQuery.of(context).size.width * 0.20;
    }
  }
}
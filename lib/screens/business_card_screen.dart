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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  radius: avatarSize(context),
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/images/profilePic.jpg"),
                ),
                Text(
                  'Jeff Porter',
                  style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Subpar Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '(777) 777-7777',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                contactRow(),
              ],
            ),
          ),
        ));
  }

  double avatarSize(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return MediaQuery.of(context).size.width * 0.1;
    } else {
      return MediaQuery.of(context).size.width * 0.20;
    }
  }

  Widget contactRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('github.com/JBPort94',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            )),
        Text('portejef@oregonstate.edu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ))
      ],
    );
  }
}

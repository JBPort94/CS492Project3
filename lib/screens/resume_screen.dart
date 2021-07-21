import 'package:flutter/material.dart';
//USE SingleChildScrollView - Create reusable Position widget with constructor and default value? - Use nice font. 
class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          headerRow(),
          positionRow(),
          positionRow(),
          positionRow(),
          positionRow(),
          positionRow(),
          positionRow(),
          positionRow(),
          positionRow(),
          positionRow(),
        ]
      ),
    );
  }

  Widget headerRow(){
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Jeff Porter',
                style: TextStyle(
                  fontFamily: 'PragatiNarrow',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )
              ),
              Text('portejef@oregonstate.edu',
                style: TextStyle(
                  fontSize: 14,
                )
              ),
              Text('https://github.com/JBPort94',
                style: TextStyle(
                  fontSize: 14,
                )
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10)
              ),
            ]);
  }

  Widget positionRow(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Industrial Engineer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Micron Inc'),
              Text('June 2016 - Present'),
              Text('Boise, ID')
            ],
          ),
          Text('Description: Lorem ipsum dolor sit amet, consectetur adipiscing ' +
                'elit, sed do eiusmod tempor incididunt ut labore et dolore magna' +
                ' aliqua. Ut enim ad minim veniam, quis nostrud exercitation ' +
                'ullamco laboris nisi ut aliquip'
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10)
          ),
        ],
      );
  }

}
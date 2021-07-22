import 'package:flutter/material.dart';
import '../models/magic_answer.dart';

class PredictorScreen extends StatefulWidget {
  const PredictorScreen({ Key? key }) : super(key: key);

  @override
  _PredictorScreenState createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  
  final predictor = MagicAnswer();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Text('Tap Me... Maybe?',
            style: TextStyle(
              fontFamily: 'YellowTail',
              fontSize: 36
            )
          ),
        ),
        GestureDetector(
          onTap: () { setState( () {predictor.shake(); }); },
          child: Text(
            'Ask any question... Tap Here for your answer!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.deepOrange[800]
            ))
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text('${predictor.chosenAnswer}',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blueGrey[400]
            )
          ),
        )
      ]
    );
  }
}
import 'package:flutter/material.dart';

import 'screens/business_card_screen.dart';
import 'screens/resume_screen.dart';
import 'screens/predictor_screen.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MainTabController()
    );
  }
}

class MainTabController extends StatelessWidget {

  static const tabs = [
    Tab(icon: Icon(Icons.face)),
    Tab(icon: Icon(Icons.view_list)),
    Tab(icon: Icon(Icons.help_outlined))
  ];

  final screens = [BusinessCardScreen(), ResumeScreen(), PredictorScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Call Me Maybe'),
          bottom: TabBar(tabs: tabs)
        ),
        body: TabBarView(children: screens)
      )
    );
  }
}
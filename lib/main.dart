import 'package:dribble/Main%20Screen.dart';
import 'package:dribble/Second%20Screen%20List%20View.dart';
import 'package:dribble/profile%20page.dart';
import 'package:flutter/material.dart';

import 'Activity.dart';
import 'Plan details.dart';
import 'Second Screen.dart';
import 'calender.dart';
import 'profile page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Second Screen" : (context) => SecondScreen(),
        "Profile Page" : (context) => ProfilePage(),
        "Plan details" : (context) => Plandetails()
      },
      home: MainScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}

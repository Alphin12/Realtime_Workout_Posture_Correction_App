import 'package:flutter/material.dart';
import 'package:workout_posture_correction_app/startslidez.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false, //to avoid turning on a debug banner while in debug mode
        theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor:const Color.fromARGB(255, 2, 255, 247),
          brightness: Brightness.dark,
          surface:const Color.fromARGB(255, 41, 45, 44),
        ),
        scaffoldBackgroundColor:const Color.fromARGB(255, 6, 7, 7),
      ),
        home: OnBoardingPage(),
      );
}

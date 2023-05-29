import 'package:flutter/material.dart';
import 'package:workout_posture_correction/video_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 35, 197, 230),
          brightness: Brightness.dark,
          surface: Color.fromARGB(255, 38, 41, 42),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 6, 7, 7),
      ),
      home: const VideoInput(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:youtube_ui/Screens/Home_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), 
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

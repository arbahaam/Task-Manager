import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_manager/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task and Project Manager",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Hexcolor('#21263f'),
        accentColor: Color(0xFFEFDF594),
      ),
      home: HomeScreen(),
    );
  }
}

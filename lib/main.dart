import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/home_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: HomeScreen(),
    );
  }
}

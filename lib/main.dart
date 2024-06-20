import 'package:flutter/material.dart';
import 'package:xo/board_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      initialRoute: BoardScreen.routeName,
      routes :{
        BoardScreen.routeName:(context)=> BoardScreen()
      },
    );
  }
}



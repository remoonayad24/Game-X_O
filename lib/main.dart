import 'package:flutter/material.dart';
import 'package:xo/board_screen.dart';
import 'package:xo/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routename,
      routes :{
        BoardScreen.routeName:(context)=> BoardScreen(),
        LoginScreen.routename:(_)=> LoginScreen()
      },
    );
  }
}



import 'package:flutter/material.dart';
import 'package:threads_clone/screens/landing_page.dart';
import 'package:threads_clone/screens/profile_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),

    );
  }
}
import 'package:flutter/material.dart';

class ThreadScreen extends StatefulWidget {
  const ThreadScreen({super.key});

  @override
  State<ThreadScreen> createState() => _ThreadScreenState();
}

class _ThreadScreenState extends State<ThreadScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Container(
          height: height*0.8,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img4.png'),
              fit: BoxFit.cover,
              )
          ),
        )
      ]),
    );
  }
}
import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 6),
        () => Navigator.pushReplacementNamed(context, 'HomePage'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/flat-lay-batch-cooking-composition_23-2148765597.jpg?w=2000'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

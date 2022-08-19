import 'dart:async';

import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(
      duration,
      () => Navigator.pushNamed(context, '/login'),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Image.asset(
          'assets/logo/logo-app.png',
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}

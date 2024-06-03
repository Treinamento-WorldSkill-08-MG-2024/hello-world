import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomeScreen()))
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [Text("Splash Screen")],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello/home.dart';
import 'package:hello/splash.dart';

void main() {
  runApp(const MainApp());
}

const kHomeScreenRoute = '';

/// Speed
/// MacOS 1st run: 275s
/// MacOS hot restart: 1.2s
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      routes: {
        kHomeScreenRoute: (_) => const HomeScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Hello World")),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

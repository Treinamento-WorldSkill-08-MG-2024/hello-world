import 'package:flutter/material.dart';
import 'package:hello/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const gibberishList = ["asasassdasd", "asdafasf", "kjnekvndssio"];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Hello World"),
              const Divider(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: gibberishList.length,
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(gibberishList[index])],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

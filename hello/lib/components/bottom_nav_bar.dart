import 'package:flutter/material.dart';
import 'package:hello/main.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: const [
        BottomNavigationBarItem(label: "Label", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Label", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Label", icon: Icon(Icons.home)),
      ],
      onTap: (index) {
        if (selectedIndex == index) {
          return;
        }

        setState(() {
          selectedIndex = index;
        });

        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(kRoutesList[index]);
      },
    );
  }
}

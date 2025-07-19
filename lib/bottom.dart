import 'package:blinkit/cart.dart';
import 'package:blinkit/category.dart';
import 'package:blinkit/homescreen.dart';
import 'package:blinkit/printscreen.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {

  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
    int idx = 0;

  List<Widget> list = [Homescreen(), Cart(), Category(), Printscreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: idx, children: list),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/shopping-bag1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/category1.png"),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/printer1.png"),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
         currentIndex: idx,
        onTap: (index) {
          setState(() {
            idx = index;
          });
        },
      ),
    );
  }
}

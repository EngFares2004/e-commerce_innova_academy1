import 'package:e_commerce/screens/button_screen/account_screen.dart';
import 'package:e_commerce/screens/button_screen/home_page.dart';
import 'package:e_commerce/screens/button_screen/order_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'button_screen/heart_screen.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final myPages = [
    const HomePage(),
    const Wishlist(),
    const Order(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: IndexedStack(
        index: pageIndex,
        children: myPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        currentIndex: pageIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,

        items:  [
          const BottomNavigationBarItem(
            icon: Icon(      CupertinoIcons.home,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon( MdiIcons.heartOutline,),
            label: "WISHLIST",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,),
            label: "ORDER",
          ),
          const BottomNavigationBarItem(

            icon: Icon( CupertinoIcons.person_alt_circle),
            label: "ACCOUNT",
          ),
        ],
      ),
    );
  }
}

import 'package:e_commerce/home_screen.dart';
import 'package:e_commerce/item_screen.dart';
import 'package:e_commerce/list_item_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'task',

     // home: HomeScreen(),
      routes:{
        '/': (context) => HomeScreen(),
        '/listItemScreen': (context) => ListItemScreen(),
        //'/itemScreen': (context) =>ItemScreen(),
      },
    );
  }
}



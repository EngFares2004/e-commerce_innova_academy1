import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child: const Center(
        child: Text("Wishlist Screen",style: TextStyle(
            color: Colors.black,
          fontFamily: Assets.fontsWorkSansBold,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
      ),
    )

    ;
  }

}
import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget{
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.green,
      child: const Center(
          child: Text("Order Screens",style: TextStyle(
              color: Colors.black,
              fontFamily: Assets.fontsWorkSansBold,
              fontSize: 20,
              fontWeight: FontWeight.bold

          ),),
      ),
    );
  }

}
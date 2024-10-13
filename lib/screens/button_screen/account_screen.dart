

import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget{
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {





  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.red,
      child: const Center(
        child: Text("Account Screen",style: TextStyle(
            color: Colors.black,
            fontFamily: Assets.fontsWorkSansBold,
          fontSize: 20,
          fontWeight: FontWeight.bold

        ),),
      ),
    );
  }
}
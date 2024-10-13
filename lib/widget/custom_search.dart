import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 24,),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Product Name',
          hintStyle: const TextStyle(
            color: Color(0xffC4C5C4)
          ),
          suffixIcon: const Icon(CupertinoIcons.search),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

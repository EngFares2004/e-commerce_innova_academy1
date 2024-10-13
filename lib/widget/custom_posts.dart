import 'package:flutter/material.dart';


class CustomPosts extends StatelessWidget {
  final double? height;
  final double? width;
  final String? imageUrl;
  const CustomPosts({super.key,this.width=315,this.height=150,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration:  const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Image.asset(
        imageUrl!,
        height:height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}

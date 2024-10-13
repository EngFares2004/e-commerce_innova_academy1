

import 'package:e_commerce/widget/product_item.dart';
import 'package:e_commerce/widget/custom_search_bar.dart';
import 'package:flutter/material.dart';

import '../widget/custom_abb_bar.dart';

class ListProductsScreen extends StatefulWidget {
  const ListProductsScreen({super.key});

  @override
  _ListProductsScreenState createState() => _ListProductsScreenState();
}

class _ListProductsScreenState extends State<ListProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: CustomAppBar(
        title: "Category",),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
            'Gadget',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xff0C1A30)
            )),
          ),

            const CustomSearch(),
            const SizedBox(height: 8),
            ProductGridItemsView(),


          ],
        ),
      ),
    );
  }


}

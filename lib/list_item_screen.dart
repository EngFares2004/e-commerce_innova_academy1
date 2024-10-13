

import 'package:e_commerce/widget/product_item.dart';
import 'package:e_commerce/widget/custom_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItemScreen extends StatefulWidget {
  const ListItemScreen({super.key});

  @override
  _ListItemScreenState createState() => _ListItemScreenState();
}

class _ListItemScreenState extends State<ListItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Category", style: TextStyle(

        ),
        ),
        actions: [

          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.cart),
              ),
              Positioned(
                left: 25,
                top: 10,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),

        ],
        elevation: 5,
      ),
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
            ProductGridItems(),


          ],
        ),
      ),
    );
  }


}

import 'package:e_commerce/widget/custom_abb_bar.dart';
import 'package:e_commerce/widget/product_item.dart';
import 'package:e_commerce/generated/assets.dart';
import 'package:e_commerce/widget/custom_posts.dart';
import 'package:e_commerce/widget/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        title: "Mega Mall",
        titleColor: Colors.blueAccent,
        showNotificationIcon: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSearch(),
            _showCustomPosts() ,
            _showCategoryItem(),
            const SizedBox(height: 8),
            ProductGridView(),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(12),
              child: CustomPosts(imageUrl: Assets.imagesBanner, width: 375,),
            ),

          ],
        ),
      ),
    );
  }
  Widget _showCustomPosts() {
    return  const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            CustomPosts(imageUrl: Assets.imagesGroup),
            SizedBox(width: 12,),
            CustomPosts(imageUrl: Assets.imagesGroup1),

          ],

        ),
      ),
    );
  }
  Widget _showCategoryItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('See All'),
              ),
            ],
          ),
          const SizedBox(height: 8),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryItem("Foods", Assets.iconVegetable),
                _buildCategoryItem("Gift", Assets.iconFruits),
                _buildCategoryItem("Fashion", Assets.iconMeat),
                _buildCategoryItem("Gadget", Assets.iconEggs),
                _buildCategoryItem("Fashion", Assets.iconMeat),

              ],
            ),
          ),


          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String label, String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Color(0xffE4F3EA),
              borderRadius: BorderRadius.circular(8)
            ),
            child: SvgPicture.asset(

              image,

            ),),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }

}

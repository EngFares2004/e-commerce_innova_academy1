import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  final String name;
  final String price;
  final String imagePath;

  ItemScreen({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
  });

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Detail Product",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.arrow_turn_up_right, color: Colors.black),
          ), Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.cart, color: Colors.black),
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
              ),
            ],
          ),
        ],
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffFAFAFA),
                ),
                child: Image.asset(
                  widget.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 8),

              Text(
                widget.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.price,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 12),
                  Text(' 4.8', style: TextStyle(fontSize: 12)),
                  SizedBox(width: 5),
                  Text('84 Reviews', style: TextStyle(fontSize: 12)),
                  Spacer(),
                  Text('Tersedia: 250', style: TextStyle(fontSize: 12, color: Color(0xff3A9B7A))),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Description Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff0C1A30),
                ),
              ),
              const SizedBox(height: 16),
              Divider(color: Colors.black, thickness: 0.1),
              // معلومات المتجر
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(Assets.imagesImage5),
                ),
                title: Text(
                  'Shop Larson Electronic',
                  style: const TextStyle(
                    color: Color(0xff0C1A30),
                    fontSize: 14,
                  ),
                ),
                subtitle: Text(
                  "Official Store",
                  style: const TextStyle(
                    color: Color(0xff0C1A30),
                    fontSize: 12,
                  ),
                ),
                trailing: Icon(
                  CupertinoIcons.forward,
                  color: Color(0xff0C1A30),
                  size: 12,
                ),
              ),
              Divider(color: Colors.black, thickness: 0.1),
              const SizedBox(height: 16),
              Text(
                'The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. \n'
                    'The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Color(0xff0C1A30),
                ),
              ),
              const SizedBox(height: 16),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                      label: Text(
                        'Add to Wishlist',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.red,
                        side: BorderSide(color: Colors.red),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
                      label: Text('Add to Cart'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

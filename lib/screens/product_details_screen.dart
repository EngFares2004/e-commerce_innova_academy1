import 'package:e_commerce/generated/assets.dart';
import 'package:e_commerce/widget/custom_abb_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String productName;
  final String productPrice;
  final String productImagePath;

  const ProductDetailsScreen({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
  });

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Product Details",
        titleColor: Colors.black,
        backgroundColor: Colors.white,
        iconColor: Colors.black,
        showNotificationIcon: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProductImage(),
            const SizedBox(height: 8),
            _buildProductInfo(),
            const SizedBox(height: 16),
            _buildSellerInfo(),
            const SizedBox(height: 16),
            _buildProductDescription(),
            const SizedBox(height: 16),
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildProductImage() {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffFAFAFA),
      ),
      child: Image.asset(
        widget.productImagePath,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildProductInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.productName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.productPrice,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: const [
            Icon(Icons.star, color: Colors.yellow, size: 12),
            SizedBox(width: 4),
            Text('4.8', style: TextStyle(fontSize: 12)),
            SizedBox(width: 5),
            Text('84 Reviews', style: TextStyle(fontSize: 12)),
            Spacer(),
            Text('Available: 250', style: TextStyle(fontSize: 12, color: Color(0xff3A9B7A))),
          ],
        ),
      ],
    );
  }

  Widget _buildSellerInfo() {
    return Column(
      children: [
        const Divider(color: Colors.black, thickness: 0.1),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(Assets.imagesImage5),
          ),
          title: const Text(
            'Shop Larson Electronic',
            style: TextStyle(
              color: Color(0xff0C1A30),
              fontSize: 14,
            ),
          ),
          subtitle: const Text(
            "Official Store",
            style: TextStyle(
              color: Color(0xff0C1A30),
              fontSize: 12,
            ),
          ),
          trailing: const Icon(
            CupertinoIcons.forward,
            color: Color(0xff0C1A30),
            size: 12,
          ),
        ),
        const Divider(color: Colors.black, thickness: 0.1),
      ],
    );
  }

  Widget _buildProductDescription() {
    return const Text(
      'The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, '
          'making it stiffer, lighter, and stronger than regular PET speaker units. '
          'This allows the diaphragm to vibrate without the levels of distortion found in other speakers.',
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: Color(0xff0C1A30),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            label: const Text(
              'Add to Wishlist',
              style: TextStyle(color: Colors.black),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              side: const BorderSide(color: Colors.red),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
            label: const Text('Add to Cart'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      ],
    );
  }
}

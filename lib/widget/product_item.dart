import 'package:e_commerce/generated/assets.dart';
import 'package:e_commerce/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFAFAFA),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Featured Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/listItemScreen');
                },
                child: const Text('See All'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              buildProductCard(
                'TMA-2 HD Wireless',
                'Rp. 1.500.000',
                Assets.imagesImage,
              ),
              buildProductCard(
                'TMA-2 HD Wireless',
                'Rp. 1.500.000',
                Assets.imagesImage5,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildProductCard(String productName, String productPrice, String productImagePath) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productImagePath,
            height: 129,
            width: 130,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            productName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(productPrice, style: const TextStyle(color: Colors.green)),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.star, color: Colors.yellow, size: 12),
              Text('4.8', style: TextStyle(fontSize: 12)),
              Text('84 Reviews', style: TextStyle(fontSize: 12)),
              Icon(Icons.more_vert, size: 12),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductGridItemsView extends StatelessWidget {
  const ProductGridItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productItems = [
      {
        'name': 'TMA-2 HD Wireless',
        'price': 'Rp. 1.500.000',
        'image': Assets.imagesImage,
      },
      {
        'name': 'TMA-2 HD Wireless',
        'price': 'Rp. 1.500.000',
        'image': Assets.imagesImage5,
      },
      {
        'name': 'TMA-2 HD Wireless',
        'price': 'Rp. 1.500.000',
        'image': Assets.imagesImage,
      },
      {
        'name': 'TMA-2 HD Wireless',
        'price': 'Rp. 1.500.000',
        'image': Assets.imagesImage5,
      },
      {
        'name': 'TMA-2 HD Wireless',
        'price': 'Rp. 1.500.000',
        'image': Assets.imagesImage,
      },
      {
        'name': 'TMA-2 HD Wireless',
        'price': 'Rp. 1.500.000',
        'image': Assets.imagesImage5,
      },
    ];

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFAFAFA),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: productItems.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsScreen(
                        name: productItems[index]['name']!,
                        price: productItems[index]['price']!,
                        imagePath: productItems[index]['image']!,
                      ),
                    ),
                  );
                },
                child: ProductItemCard(
                  productName: productItems[index]['name']!,
                  productPrice: productItems[index]['price']!,
                  productImagePath: productItems[index]['image']!,
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
            child: Container(
              height: 35,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  "Filter & Sorting",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff0C1A30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItemCard extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImagePath;

  const ProductItemCard({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productImagePath,
            height: 129,
            width: 130,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            productName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(productPrice, style: const TextStyle(color: Colors.green)),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.star, color: Colors.yellow, size: 12),
              Text('4.8', style: TextStyle(fontSize: 12)),
              Text('84 Reviews', style: TextStyle(fontSize: 12)),
              Icon(Icons.more_vert, size: 12),
            ],
          ),
        ],
      ),
    );
  }
}

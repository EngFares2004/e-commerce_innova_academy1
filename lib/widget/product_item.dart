import 'package:e_commerce/generated/assets.dart';
import 'package:e_commerce/item_screen.dart';
import 'package:flutter/material.dart';


class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
                }
                ,
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
              buildProductItem(
                'TMA-2 HD Wireless',
                'Rp. 1.500.000',
                Assets.imagesImage,
              ),
              buildProductItem(
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

  Widget buildProductItem(String name, String price, String imagePath) {
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
            imagePath,
            height: 129,
            width: 130,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(price, style: const TextStyle(color: Colors.green)),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
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
class ProductGridItems extends StatelessWidget {
  const ProductGridItems({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> products = [
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
            itemCount: products.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                ItemScreen(name: products[index]['name']!,price: products[index]['price']!,imagePath: products[index]['image']!)

                  ));
                },
                child: ProductItem(
                  name: products[index]['name']!,
                  price: products[index]['price']!,
                  imagePath: products[index]['image']!,
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
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
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

  Widget buildProductItem(String name, String price, String imagePath) {
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
            imagePath,
            height: 129,
            width: 130,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(price, style: const TextStyle(color: Colors.green)),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
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
class ProductItem extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;

  const ProductItem({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
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
            imagePath,
            height: 129,
            width: 130,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(price, style: const TextStyle(color: Colors.green)),
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

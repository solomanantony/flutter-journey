import 'package:flutter/material.dart';
import 'package:mini_project/data/product_data.dart';
import 'package:mini_project/data/models/product.dart';
import 'package:mini_project/widgets/profile_drawer.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  int _cartCount = 0;

  @override
  Widget build(BuildContext context) {
    final String userName = (ModalRoute.of(context)?.settings.arguments as String?) ??
        'Jane Anderson';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              if (_cartCount > 0)
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.red,
                  child: Text(
                    '$_cartCount',
                    style: const TextStyle(fontSize: 11, color: Colors.white),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
      drawer: ProfileDrawer(userName: userName),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: productData.length,
        itemBuilder: (BuildContext context, int index) {
          final Product product = productData[index];
          return Card(
            color: const Color(0xFFD8E2E9),
            elevation: 1,
            margin: const EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      product.imageUrl,
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (BuildContext context, Object error, StackTrace? stackTrace) {
                        return const SizedBox(
                          width: 72,
                          height: 72,
                          child: ColoredBox(
                            color: Colors.white,
                            child: Icon(Icons.image_not_supported_outlined),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Name: ${product.name}\n'
                      'Unit: ${product.unit}\n'
                      'Price: \$${product.price}',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        _cartCount++;
                      });
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFF26343F),
                    ),
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(),
          ),
        );
      },
      child: GridTile(
        child: Image.network(
          'https://via.placeholder.com/150',
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Text('4.0', style: TextStyle(color: Colors.white)),
          title: Text('Product Title', textAlign: TextAlign.center),
          trailing: Text('£19.99', style: TextStyle(color: Colors.yellow)),
        ),
      ),
    );
  }
}

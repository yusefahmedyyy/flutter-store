import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network('https://via.placeholder.com/300'),
                  Image.network('https://via.placeholder.com/300'),
                  Image.network('https://via.placeholder.com/300'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('THE PERFECT', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text('Levis', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('£19.99', style: TextStyle(fontSize: 22, color: Colors.orange)),
                  SizedBox(height: 10),
                  Text('Description', style: TextStyle(fontSize: 18)),
                  Text('Print T-shirt', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('Colors', style: TextStyle(fontSize: 18)),
                  Row(
                    children: [
                      ChoiceChip(label: Text('Red'), selected: false),
                      SizedBox(width: 5),
                      ChoiceChip(label: Text('Green'), selected: false),
                      SizedBox(width: 5),
                      ChoiceChip(label: Text('Blue'), selected: false),
                      SizedBox(width: 5),
                      ChoiceChip(label: Text('Cyan'), selected: true),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Sizes', style: TextStyle(fontSize: 18)),
                  Row(
                    children: [
                      ChoiceChip(label: Text('S'), selected: false),
                      SizedBox(width: 5),
                      ChoiceChip(label: Text('M'), selected: true),
                      SizedBox(width: 5),
                      ChoiceChip(label: Text('L'), selected: false),
                      SizedBox(width: 5),
                      ChoiceChip(label: Text('XL'), selected: false),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Quantity', style: TextStyle(fontSize: 18)),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                      Text('1', style: TextStyle(fontSize: 18)),
                      IconButton(icon: Icon(Icons.add), onPressed: () {}),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('ADD TO WISHLIST'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('ORDER PAGE'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

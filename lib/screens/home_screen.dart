import 'package:flutter/material.dart';
import '../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Pawan Kumar'),
              accountEmail: Text('mtechviral@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
            ListTile(
              title: Text('Shopping List'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Shopping Details'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Product Details'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Shopping 4'),
              onTap: () {},
            ),
            ListTile(
              title: Text('About Flutter UI Kit'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ProductsGrid(),
    );
  }
}

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (ctx, i) => ProductItem(),
    );
  }
}

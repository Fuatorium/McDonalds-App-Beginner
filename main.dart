import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'McDonalds Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}
class MenuItem {
  final String name;
  final double price;
  final String imageUrl;

  MenuItem({required this.name, required this.price, required this.imageUrl});

  String get formattedPrice {
    return '₺${price.toStringAsFixed(2)}';
  }
}
class HomePage extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'Big Mac',
      price: 107.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-Big-Mac-2:product-header-mobile?wid=829&hei=476&dpr=off',
    ),
    MenuItem(
      name: 'McChicken',
      price: 87.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-McChicken-Sandwich-2:product-header-mobile?wid=829&hei=476&dpr=off',
    ),
    MenuItem(
      name: 'Quarter Pounder with Cheese',
      price: 132.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-Quarter-Pounder-with-Cheese-2:product-header-mobile?wid=829&hei=476&dpr=off',
    ),
    MenuItem(
      name: 'Filet-O-Fish',
      price: 78.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-Filet-o-Fish-2:product-header-mobile?wid=829&hei=478&dpr=off',
    ),
    MenuItem(
      name: 'Steakhouse Stack',
      price: 104.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-steakhouse-stack:product-header-mobile?wid=829&hei=478&dpr=off',
    ),
    MenuItem(
      name: 'Double McPlant',
      price: 102.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-double-mcplant-new:product-header-mobile?wid=829&hei=478&dpr=off',
    ),
    MenuItem(
      name: 'Bacon Mayo Chicken',
      price: 90.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-bacon-mayo-chicken-allergen:product-header-mobile?wid=829&hei=478&dpr=off',
    ),
    MenuItem(
      name: 'McCrispy',
      price: 78.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-mccrispy-4:product-header-mobile?wid=829&hei=476&dpr=off',
    ),
    MenuItem(
      name: 'Vegetable Deluxe',
      price: 84.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-Vegetable-Deluxe-2:product-header-mobile?wid=829&hei=478&dpr=off',
    ),
    MenuItem(
      name: 'Cheeseburger',
      price: 74.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-Cheeseburger-new:product-header-mobile?wid=829&hei=478&dpr=off',
    ),
    MenuItem(
      name: 'Chicken Big Mac',
      price: 100.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-chicken-big-mac:product-header-mobile?wid=829&hei=478&dpr=off',
    ),
    MenuItem(
      name: 'McSpicy',
      price: 99.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-McSpicy-New:product-header-mobile?wid=829&hei=478&dpr=off',
    ),
    MenuItem(
      name: 'Double Quarter Pounder™ with Cheese',
      price: 157.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-Double-Quarter-Pounder-2:product-header-mobile?wid=830&hei=475&dpr=off',
    ),
    MenuItem(
      name: 'McChicken® Sandwich',
      price: 71.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-McChicken-Sandwich-2:product-header-mobile?wid=829&hei=476&dpr=off',
    ),
    MenuItem(
      name: 'McPlant',
      price: 78.00,
      imageUrl:
      'https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-mcplant-new:product-header-mobile?wid=829&hei=476&dpr=off',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('McDonalds'),
        leading: Image.network(
          'https://www.mcdonalds.com/content/dam/sites/uk/nfl/icons/FooterLogo.jpg',
          height: 40,
          width: 40,
        ),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(
              menuItems[index].imageUrl,
              height: 80,
              width: 80,
            ),
            title: Text(menuItems[index].name),
            subtitle: Text('\$${menuItems[index].price}'),
          );
        },
      ),
    );
  }
}




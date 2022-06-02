import 'package:flutter/material.dart';
import 'package:udemy/screens/products_overview_screens.dart';
import 'package:udemy/screens/product_detail_screens.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'AkayaTelivigala',
        colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.purple).
        copyWith(secondary: Colors.deepOrange),
      ),
      home: ProductsOverviewScreen(),
       initialRoute: '/',
      routes: {
        '/':(context) =>  ProductsOverviewScreen(),
        '/product-detail':(context) => ProductDetailScreen(),
      },
    );
  }
}



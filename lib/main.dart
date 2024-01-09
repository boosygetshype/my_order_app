import 'package:flutter/material.dart';
import 'package:my_order_app/screens/menupage.dart';
import 'package:my_order_app/screens/cartpage.dart';
import 'package:my_order_app/screens/intropage.dart';
import 'package:provider/provider.dart';
import 'package:my_order_app/models/shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child:  const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage':(context) => const CartPage()
        
      },
    );
  }
}

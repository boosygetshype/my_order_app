import 'package:flutter/material.dart';
import 'package:my_order_app/models/foods.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Turkish Coffee",
        price: "65",
        imagePath: "lib/images/türkkahvesi.png",
        rating: "4.7"),
    Food(
        name: "Turkish Tea",
        price: "15",
        imagePath: "lib/images/çay.png",
        rating: "4.9"),
    Food(
        name: "Espresso",
        price: "40",
        imagePath: "lib/images/expresso.png",
        rating: "4.2"),
    Food(
        name: "Iced Americano",
        price: "65",
        imagePath: "lib/images/coldbrew.png",
        rating: "4.8"),
    Food(
        name: "Baklava",
        price: "65",
        imagePath: "lib/images/baklava.png",
        rating: "4.9"),
    Food(
        name: "Trileçe",
        price: "65",
        imagePath: "lib/images/trileçe.png",
        rating: "4.9"),
    Food(
        name: "Profiterol",
        price: "65",
        imagePath: "lib/images/profiteröl.png",
        rating: "4.4"),
    Food(
        name: "Tiramisu",
        price: "65",
        imagePath: "lib/images/tiramisu.png",
        rating: "4.9"),
    Food(
        name: "Chesscake",
        price: "65",
        imagePath: "lib/images/chesecake.png",
        rating: "4.7"),
  ];

  List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void AddtoCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}

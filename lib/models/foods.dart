class Food {
  String description;
  String name;
  String price;
  String imagePath;
  String rating;
  int quantity;

  Food(
      {required this.description,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.rating,
       this.quantity = 1,});

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
}
class Order {
  final int orderNumber;
  final List<Food> items;
  final DateTime orderDate;

  Order({
    required this.orderNumber,
    required this.items,
    required this.orderDate,
  });
}

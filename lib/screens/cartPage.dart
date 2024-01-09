import 'package:flutter/material.dart';
import 'package:my_order_app/components/button.dart';
import 'package:my_order_app/models/shop.dart';
import 'package:my_order_app/themes/colors.dart';
import 'package:provider/provider.dart';
import 'package:my_order_app/models/foods.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);

    final snackBar = SnackBar(
      content: Text("Ürün başarıyla silinmiştir."),
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: "Geri Al",
        onPressed: () {
          shop.addToCart(food); // Ürünü tekrar sepete ekle
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void createOrder(BuildContext context) {
    final shop = context.read<Shop>();

    if (shop.cart.isNotEmpty) {
      shop.clearCart();
      showSnackbar(context, "Siparişiniz başarıyla oluşturuldu.");
    } else {
      showSnackbar(context, "Lütfen önce sepete ürün ekleyiniz.");
    }
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/menupage");
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blueGrey[100],
              size: 30,
            ),
          ),
          title: Text(
            "Sepetim",
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.blueGrey[300],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Food food = value.cart[index];
                  final String foodName = food.name;
                  final String foodPrice = food.price;
                  return Container(
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: secondaryColor,
                    ),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        color: Colors.grey[200],
                        onPressed: () => removeFromCart(food, context),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GestureDetector(
                child: MyButton(
                  onTap: () => createOrder(context),
                  text: "Sipariş Oluştur",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

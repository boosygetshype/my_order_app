import 'package:flutter/material.dart';
import 'package:my_order_app/themes/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(40)
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style:  TextStyle(color: Colors.blueGrey[100], fontWeight: FontWeight.bold, fontSize: 20),
            ),
             Icon(Icons.arrow_forward, color: Colors.blueGrey[100],size: 30,)
          ],
        ),
      ),
    );
  }
}

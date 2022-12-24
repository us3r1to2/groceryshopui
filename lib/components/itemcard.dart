import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  ItemCard(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Image
          Image.asset(
            imagePath,
            height: 64,
          ),

          //Item name
          Text(itemName),

          //Price + button
          MaterialButton(
            onPressed: onPressed,
            color: color[800],
            child: Text(
              '\$' + itemPrice,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //List of items on sale
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, color]
    ['Avocado', '4.00', 'lib/images/avocado.png', Colors.green],
    ['Banana', '2.50', 'lib/images/banana.png', Colors.yellow],
    ['Chicken', '12.80', 'lib/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'lib/images/water.png', Colors.blue],
  ];

  //List of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //Methods
  //Adding items to the cart
  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //Removing item for the cart
  void removeItemsToCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //Calculating total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}

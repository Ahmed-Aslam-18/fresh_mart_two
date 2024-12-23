import 'package:flutter/cupertino.dart';
import 'package:fresh_mart_two/models/CartItem.dart';

class CartProvider with ChangeNotifier {
  List<CartItem> items = [];

  void addToCart(CartItem cartItem) {
    items.add(cartItem);
    notifyListeners();
  }

}

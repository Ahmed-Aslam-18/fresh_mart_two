import 'package:flutter/material.dart';
import 'package:fresh_mart_two/models/FoodItem.dart';

class CartItem {
  FoodItem? foodItem;
  int? quantity;
  double? totalPrice;

  CartItem({this.foodItem, this.quantity, this.totalPrice});
}

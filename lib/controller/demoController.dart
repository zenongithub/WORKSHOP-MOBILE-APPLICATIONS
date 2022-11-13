

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:minggu_9/model/product.dart';
import 'package:get/get.dart';

class DemoController extends GetxController {
  var CartItems = <Product>[].obs;
  int get cartCount => CartItems.length;
  double get totalAmount =>
      CartItems.fold(0.0, (sum, element) => sum + element.price);
  //add the product
  addToCart(Product product) {
    CartItems.add(product);
  }

  final Storage = GetStorage();
  bool get isDark => Storage.read('darkmode') ?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => Storage.write('darkmode', val);
}

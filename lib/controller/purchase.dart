

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:minggu_9/model/product.dart';

class Purchase extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    await Future.delayed(Duration(seconds: 1));
    //call from server End

    var serverResponse = [
      Product(1, "Demo Product", "aby",
          "this is a Product that we are going to show by getX", 300.0),
      Product(2, "Demo Product", "aby",
          "this is a Product that we are going to show by getX", 300.0),
      Product(3, "Demo Product", "aby",
          "this is a Product that we are going to show by getX", 300.0),
      Product(4, "Demo Product", "aby",
          "this is a Product that we are going to show by getX", 300.0),
      Product(5, "Demo Product", "aby",
          "this is a Product that we are going to show by getX", 300.0),
      Product(6, "Demo Product", "aby",
          "this is a Product that we are going to show by getX", 300.0),
    ];
    products.value = serverResponse;
  }
}

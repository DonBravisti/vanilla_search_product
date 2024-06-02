import 'package:flutter/foundation.dart';
import '../models/product_model.dart';
import '../models/cart_model.dart';

class CartState extends ChangeNotifier {
  final CartModel _cart = CartModel();

  List<ProductModel> get products => _cart.products;

  void addProduct(ProductModel product) {
    _cart.addProduct(product);
    notifyListeners();
  }

  void removeProduct(ProductModel product) {
    _cart.removeProduct(product);
    notifyListeners();
  }
}

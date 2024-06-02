import 'product_model.dart';

class CartModel {
  final List<ProductModel> products = [];

  void addProduct(ProductModel product) {
    products.add(product);
  }

  void removeProduct(ProductModel product) {
    products.remove(product);
  }
}

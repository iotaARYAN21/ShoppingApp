
import 'package:emailapp/product.dart';


class Cart {  // Creating a Cart class to store the details of the product in list type
  static final Cart _instance = Cart._internal();  // creating an object with List
  List<Product> _items = [];

  factory Cart() {
    return _instance;
  }

  Cart._internal();

  List<Product> get items => _items;

  void addItem(Product product) {  // function to add item in the list
    _items.add(product);
  }

  void removeItem(Product product) {   // function to delete item from the list
    _items.remove(product);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class Product{  // Creating datatyoe Product to store the details of the item for manipulation
    final String id;
   final String? name;
   final double price;
   final String? url;
   String? desc1;
  Product({
    required this.id,
    required this.name, // required used as to make necessary arguments
    required this.price,
    required this.url,
    this.desc1,
    });

  // Factory method to create a Product from a Firestore document
  factory Product.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Product(
      id: doc.id,
      name: data['name'],
      // category: data['category'],
      url: data['url'],
      desc1: data['desc1'],
      price: (data['price'] as num).toDouble(), // Ensure Price is Double
      // quantity: data['quantity'],
    );
  }

  // Method to convert a Product to a Firestore document
  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      // 'category': category,
      'url': url,
      'desc1': desc1,
      'price': price,
      // 'quantity': quantity,
    };
  }
  
  // Factory method to create a Product from a map
  factory Product.fromMap(Map<String, dynamic> data) {
    return Product(
      id: data['id'] ?? '', // Use a default value if id is not provided
      name: data['name'] ?? 'Unknown',
      url: data['url'] ?? '',
      desc1: data['desc1'] ?? '',
      price: (data['price'] ?? 0).toDouble(),
    );
  }


}
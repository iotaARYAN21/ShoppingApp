import 'package:emailapp/product.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

    // Add to cart
  Future<void> addToCart(Product product) async {
    User? user = _auth.currentUser;
    if (user != null) {
      // await userCollection.doc(user.uid).update({
      //   'cart': FieldValue.arrayUnion([product.toFirestore()])
      // });

      try {
        // Get the user's document
        DocumentReference userDoc = userCollection.doc(user.uid);

        // Get the current cart
        DocumentSnapshot userSnapshot = await userDoc.get();
        List<dynamic> cart = userSnapshot.exists && userSnapshot.data() != null
            ? (userSnapshot.data() as Map<String, dynamic>)['cart'] ?? []
            : [];

        // Add product to the cart list
        cart.add(product.toFirestore());

        // Update the user's document
        await userDoc.set({'cart': cart}, SetOptions(merge: true));
        print("Product added to cart successfully");
      } catch (e, stackTrace) {
        print("Error adding product to cart: $e");
        print("StackTrace: $stackTrace");
        rethrow; // Re-throw after logging
      }      
    }
  }
    // Remove from cart
  Future<void> removeFromCart(Product product) async {
    User? user = _auth.currentUser;
    if (user != null) {
      // await userCollection.doc(user.uid).update({
      //   'cart': FieldValue.arrayRemove([product.toFirestore()])
      // });

      try {
        await userCollection.doc(user.uid).update({
          'cart': FieldValue.arrayRemove([product.toFirestore()])
        });
        print("Product removed from cart successfully");
      } catch (e, stackTrace) {
        print("Error removing product from cart: $e");
        print("StackTrace: $stackTrace");
        rethrow; // Re-throw after logging
      }      
    }
  }
    // Fetch user cart
  Future<List<Product>> fetchCart() async {
    User? user = _auth.currentUser;
    // if (user != null) {
    //   DocumentSnapshot doc = await userCollection.doc(user.uid).get();
    //   List<dynamic> cart = doc['cart'];
    //   return cart.map((item) => Product.fromFirestore(item)).toList();
    // }

        if (user != null) {
      // DocumentSnapshot doc = await userCollection.doc(user.uid).get();
      // if (doc.exists && doc.data() != null) {
      //   Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      //   if (data.containsKey('cart') && data['cart'] is List) {
      //     List<dynamic> cart = data['cart'];
      //     return cart.map((item) {
      //       return Product.fromMap(item as Map<String, dynamic>);
      //     }).toList();
      //   }
      // }

            try {
        DocumentSnapshot doc = await userCollection.doc(user.uid).get();
        if (doc.exists && doc.data() != null) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          if (data.containsKey('cart') && data['cart'] is List) {
            List<dynamic> cart = data['cart'];
            return cart.map((item) => Product.fromMap(item as Map<String, dynamic>)).toList();
          }
        }
      } catch (e, stackTrace) {
        print("Error fetching cart: $e");
        print("StackTrace: $stackTrace");
        rethrow; // Re-throw after logging
      }
    }
    return [];
  }
}
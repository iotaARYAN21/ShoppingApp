class Product{  // Creating datatyoe Product to store the details of the item for manipulation
   final String? name;
   final double price;
   final String? url;
   String? desc1;
  Product({
    required this.name, // required used as to make necessary arguments
    required this.price,
    required this.url,
    this.desc1,
    });

}
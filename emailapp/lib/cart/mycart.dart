import 'package:emailapp/cart/cart.dart';
import 'package:emailapp/homepage.dart';
import 'package:emailapp/product.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Mycart extends StatefulWidget {
  const Mycart({super.key});

  @override
  State<Mycart> createState() => _MycartState();
}

class _MycartState extends State<Mycart> {

  List<Product> cartItems = Cart().items; // Creating a list of Product type to store the details of the product which can be used to show and manipulate


   int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
      } else if (_selectedIndex == 1) {
        // Action for Settings icon
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Mycart()),
        );
      }
    });}
  @override
  
  Widget build(BuildContext context) {
    // Calculate total amount
    double totalAmount = cartItems.fold(0.0, (sum, item) => sum + item.price);  // variable to store totalAmount of the products
    return Scaffold(                                                    // sum is a double datatype initialized with 0.0
      appBar: AppBar(
        title: Text("My Cart",),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount: cartItems.length, itemBuilder: (context,index){
              return ListTile(        // returning a listtile to show the image , price and name and delete button
                leading: Image.asset(cartItems[index].url!),
                title: Text(cartItems[index].name!),
                subtitle: Text("₹${cartItems[index].price}"),
                trailing: IconButton(onPressed: (){
                  setState(() {
                    Cart().removeItem(cartItems[index]);   // when the delete icon is tapped it deletes the particular item from the list
                  });
                }, icon: Icon(Icons.delete)),   
              );
            }),
          ),
          Container(  // Container to show the total amount
            height: 100,
            width: 100,
            child: Text("Total Amount : ₹${totalAmount.toString()}"),
          )
        ],
      ),
          bottomNavigationBar: BottomNavigationBar(items:const <BottomNavigationBarItem>[BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart")
      ],        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,),  
    );
  }
}
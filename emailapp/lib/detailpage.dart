import 'package:emailapp/cart/cart.dart';
import 'package:emailapp/homepage.dart';
import 'package:emailapp/cart/mycart.dart';
import 'package:emailapp/product.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {    // page to show details like name desc price etc
 final Product product;   // creating instance of the product class
  const Detailpage({super.key, required this.product});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
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
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Details")),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(decoration:const  BoxDecoration(shape: BoxShape.circle),child: Image.asset(widget.product.url!)),
              SizedBox(height: 10,),
              Text(widget.product.name!,style: TextStyle(fontWeight: FontWeight.bold),),
              Text("₹${widget.product.price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text(widget.product.desc1!),
              SizedBox(height: 20,),
              const Align( alignment: Alignment.centerLeft,
                child: Text("  Available Options",style: TextStyle(fontWeight: FontWeight.bold),)),
                SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // to add space evenly between the small containers
                  children: [
                    Container(height: 25,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2)),child: Center(child: Text("S")),),
                    Container(height: 25,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2)),child: Center(child: Text("M")),),
                    Container(height: 25,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2)),child: Center(child: Text("L")),),
                    Container(height: 25,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2)),child: Center(child: Text("XL")),),
                  ],
              ),
              SizedBox(height: 20,),
              const Align( alignment: Alignment.centerLeft,
                child: Text("  Available Colors",style: TextStyle(fontWeight: FontWeight.bold),)),
                SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(width: 30,height: 30,decoration: BoxDecoration(color:Colors.cyanAccent,shape:BoxShape.circle,border: Border.all(width: 2))),
                    Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.black,shape:BoxShape.circle,border: Border.all(width: 2))),
                    Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.green,shape:BoxShape.circle,border: Border.all(width: 2))),
                    Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.redAccent,shape:BoxShape.circle,border: Border.all(width: 2))),
                  ],
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){  // button to add the item being viewed to the cart
                Cart().addItem(widget.product);
                ScaffoldMessenger.of(context).showSnackBar(   // displays a message when the item is added to cart
                  SnackBar(content: Text('${widget.product.name} added to cart'))
                );
              }, child: Text("Add to Cart"))                  
            ],
          ),
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(items:const <BottomNavigationBarItem>[BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart")
      ],        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,),  
    );
  }
}
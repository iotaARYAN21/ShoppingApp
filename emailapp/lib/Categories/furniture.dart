import 'package:emailapp/detailpage.dart';
import 'package:emailapp/homepage.dart';
import 'package:emailapp/cart/mycart.dart';
import 'package:emailapp/product.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Furniture extends StatefulWidget {
  const Furniture({super.key});

  @override
  State<Furniture> createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture> {

   int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
      } else if (_selectedIndex == 5) {
        // Action for Settings icon
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Mycart()),
        );
      }
    });}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Furniture"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Furniture", price: 567.8, url: "assets/f5.png",desc1: "Here goes the description of the product"))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/f5.png'))),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Furniture"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Furniture", price: 567.8, url: "assets/f6.png",desc1: "Here goes the description of the product"))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/f6.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Furniture"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),             
                      ],
                    ),
                    // SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Furniture", price: 567.8, url: "assets/f7.png",desc1: "Here goes the description of the product"))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/f7.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Furniture"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Furniture", price: 567.8, url: "assets/f8.png",desc1: "Here goes the description of the product"))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/f8.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Furniture"),
                                ],
                              ),
                            ),  
                            // color: Colors.blue,
                          ),
                        ),             
                      ],
                    ),
                                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Furniture", price: 567.8, url: "assets/f5.png",desc1: "Here goes the description of the product"))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/f5.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Furniture"),
                                ],
                              ),
                            ),                       
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Furniture", price: 567.8, url: "assets/f6.png",desc1: "Here goes the description of the product"))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/f6.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Furniture"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),             
                      ],
                    ),          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Furniture", price: 567.8, url: "assets/f7.png",desc1: "Here goes the description of the product"))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/f7.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Furniture"),
                                ],
                              ),
                            ),                        
                            
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Furniture", price: 567.8, url: "assets/f8.png",desc1: "Here goes the description of the product"))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/f8.png'))),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Furniture"),
                                ],
                              ),
                            ),                        
                            // color: Colors.blue,
                          ),
                        ),             
                      ],
                    ), 
          ],
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
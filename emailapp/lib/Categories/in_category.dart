

  import 'package:emailapp/detailpage.dart';
import 'package:emailapp/homepage.dart';
import 'package:emailapp/cart/mycart.dart';
import 'package:emailapp/product.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InCategory extends StatefulWidget {
  const InCategory({super.key});

  @override
  State<InCategory> createState() => _InCategoryState();
}

class _InCategoryState extends State<InCategory> {

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
  // Person({name ="Phone",price="132.4"}),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Groceries"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Fruitbasket", price: 123.4, url: "assets/grocery.jpg",desc1: "Here goes the description of the Product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/grocery.jpg'))),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Fruitbasket"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Watermelon", price: 123.4, url: "assets/g1.png",desc1: "Here goes the description of the Product", id: ''))));
                          },                          
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/g1.png'))),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Watermelon"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Hazelnut", price: 123.4, url: "assets/hazelnut.png",desc1: "Here goes the description of the Product", id: ''))));
                          },  
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/hazelnut.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Hazelnut"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Lychee", price: 123.4, url: "assets/lychee.png",desc1: "Here goes the description of the Product", id: ''))));
                          },  
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/lychee.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Lychee"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Papaya", price: 123.4, url: "assets/papaya.png",desc1: "Here goes the description of the Product", id: ''))));
                          },  
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/papaya.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Papaya"),
                                ],
                              ),
                            ),                       
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Fruitbasket", price: 123.4, url: "assets/grocery.jpg",desc1: "Here goes the description of the Product", id: ''))));
                          },  
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/grocery.jpg'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Fruitbasket"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Watermelon", price: 123.4, url: "assets/g1.png",desc1: "Here goes the description of the Product", id: ''))));
                          },  
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/g1.png'))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Watermelon"),
                                ],
                              ),
                            ),                        
                            
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Hazelnut", price: 123.4, url: "assets/hazelnut.png",desc1: "Here goes the description of the Product", id: ''))));
                          },  
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/hazelnut.png')),),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Hazelnut"),
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
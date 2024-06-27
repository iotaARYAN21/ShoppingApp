import 'package:emailapp/Categories/furniture.dart';
import 'package:emailapp/Categories/in_category.dart';
import 'package:emailapp/Categories/jackets.dart';
import 'package:emailapp/Categories/laptops.dart';
import 'package:emailapp/Categories/mobiles.dart';
import 'package:emailapp/Categories/sneakers.dart';
import 'package:emailapp/Categories/toys.dart';
import 'package:emailapp/Categories/tshirts.dart';
import 'package:emailapp/login_page.dart';
import 'package:emailapp/cart/mycart.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;    // variable to know the index of current icon in bottom nav bar
    void _onItemTapped(int index) { // Function to change the currentIndex 
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {  // Navigating to different pages according to the selectedIndex
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
        backgroundColor: Colors.blue,
        title:const  Text("HomePage"),
      ),
      body: SingleChildScrollView(   // Created so that on different platform if the whole body is not visible then we can scroll and see
        child: Column(
          children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector( // Addding navigation feature to all the container => pushReplacement to have arrow to go back
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InCategory()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), shape: BoxShape.circle,image:const DecorationImage(image:AssetImage('assets/g1.png'))),
                          child: Align( // I used align so as to make the text at bottom center of the container
                            alignment: Alignment.bottomCenter,
                            child: Text("Groceries"),
                          ),
                          // color: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Jackets()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), shape: BoxShape.circle,image:const DecorationImage(image:AssetImage('assets/jacket1.png'))),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Jackets"),
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
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Laptops()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), shape: BoxShape.circle,image:const DecorationImage(image:AssetImage('assets/laptop1.png'))),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Laptops"),
                          ),
                          // color: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mobiles()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration:  BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), shape: BoxShape.circle,image:DecorationImage(image:AssetImage('assets/phone1.png'))),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Mobiles"),
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
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sneakers()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), shape: BoxShape.circle,image:const DecorationImage(image:AssetImage('assets/sneaker1.png'))),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Sneakers"),
                          ),                       
                          // color: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Tshirts()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), shape: BoxShape.circle,image:const DecorationImage(image:AssetImage('assets/tshirt5.png'))),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("T-Shirts"),
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
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Toys()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2),shape: BoxShape.circle,image:const DecorationImage(image:AssetImage('assets/toy1.png'))),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Toy"),
                          ),                        
                          
                          // color: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InCategory()));
                          // Navigator.pushNamed(context,'/grocery');
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>Furniture()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), shape: BoxShape.circle,image:const DecorationImage(image:AssetImage('assets/f1.png'))),
                          child:const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Furniture"),
                          ),                        
                          // color: Colors.blue,
                        ),
                      ),             
                    ],
                  ),
            GestureDetector(
              onTap: (){
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Column(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(5),color: Colors.lightBlue,),
                      // color: const Color.fromRGBO(33, 150, 243, 1),
                      height: 50,
                      width: 100,
                      child:Center(child: const Text("SignOut",style: TextStyle(color: Colors.white),)),
                    ),
                  ), ],
              ),
            ),                   
          ],
        ),
      ),

      // bottom nav bar -> to show icon which when Tapped changes the index and opens a new page
      bottomNavigationBar: BottomNavigationBar(items:const <BottomNavigationBarItem>[BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
      // BottomNavigationBarItem(icon:Icon(Icons.favorite_outline_outlined),label: "Favourite"),
      BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart")
      ],  currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,),
    );
  }
}
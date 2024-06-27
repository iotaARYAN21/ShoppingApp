import 'package:emailapp/auth_service.dart';
import 'package:emailapp/homepage.dart';
import 'package:emailapp/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // bool isSigning = false;  // try adding login indicator  // use CircularprogressIndicator

   // accesssing firebase auth services
  final AuthService _auth = AuthService();   // creating an instance of AuthService

  // TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();  // Controller for TextField data
  TextEditingController pwdController = TextEditingController();

  @override
  void dispose() {      // disposing the controller to avoid space consumption and slow responsivenss
    // TODO: implement dispose
    // usernameController.dispose();
    pwdController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(title:const Text("Login"),backgroundColor: Colors.blue,), // Appbar with title Login
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15, ), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      Text("Login  ",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                     Icon(Icons.login),
                   ],
                 ),
                 SizedBox(height: 20,),
                 TextField(
                  controller: emailController,
                  decoration:const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  hintText: "Email",
                 ),),
                 SizedBox(height: 20,),
                 TextField(
                  controller: pwdController,
                  decoration:   const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  hintText: "Password",
                 ),),
                 const SizedBox(height:30),
                 GestureDetector(  // using Gesture detector instead of Elevated button 
                  onTap: signIn, // On hitting the blue Login container it will start checking whether account exists or not
                   child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)  // creating round edges for the contianer
                    ),
                    child:const Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
                   ),
                 ),
                 const SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ?   "),
                    // SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SignUp()),(route)=>false); // When tapped then redirects to SignIn page and deletes the Login page i.e. back arrow from appbar removed
                      },  // navigator.pushandremoveuntil to remove the back arrow from appbar
                      child: Container(
                        child:const  Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline,decorationColor:  Color.fromARGB(255, 243, 33, 89)),),
                      ),
                    )
                  ],
                 )
              ],
          ),
        ),
      ),
    ),
    );
  }

   void signIn() async{   // fn to take the data from textfield and check whether account exists or not
    // String username = usernameController.text;
    String email = emailController.text;
    String password = pwdController.text;

    User? user = await _auth.logInWithEmailAndPassword(email, password);   // checks from firebase 

    if(user != null){
      print("Account loggedIn");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));  // if account exists then redirects to HomePage
    }
    else{
      print("Some error occured");  
    }
  }

}
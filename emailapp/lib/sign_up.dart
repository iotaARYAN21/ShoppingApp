import 'package:emailapp/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'homepage.dart';

class SignUp extends StatefulWidget {  // Same layout like LoginPage but with Username textfield
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  // accesssing firebase auth services
  final AuthService _auth = AuthService();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    usernameController.dispose();
    pwdController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(title: const Text("SignUp"),backgroundColor: Colors.blue,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15, ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      Text("SignUp",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                     Icon(Icons.app_registration),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 TextField(
                  controller: usernameController,
                  decoration:const  InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "UserName",
                 ),),
                 const SizedBox(height: 10,),
                 TextField(
                  controller: emailController,
                  decoration:const  InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Email",
                 ),),
                 const SizedBox(height: 10,),
                 TextField(
                  controller: pwdController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Password",
                 ),),
                 const SizedBox(height:30),
                 GestureDetector(
                  onTap: signUp,
                   child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text("SignUp",style: TextStyle(color: Colors.white),)),
                   ),
                 ),
                  const SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account ?   "),
                    // SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginPage()),(route)=>false);
                      },
                      child: Container(
                        child: const Text("Login",style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline,decorationColor: const Color.fromARGB(255, 243, 33, 89)),),
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



  void signUp() async{           // Taking the data from textfield and creating an account 
    // String username = usernameController.text;
    String email = emailController.text;
    String password = pwdController.text;

    User? user =await _auth.signUpWithEmailAndPassword(email, password);

    if(user != null){
      print("Account created");
      // Navigator.pushNamed(context, "/Homepage");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
    }
    else{
      print("Some error occured");
    }
  }

}
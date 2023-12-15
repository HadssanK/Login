import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  TextEditingController userEmail = TextEditingController();
  TextEditingController userpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void login()async{
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: userEmail.text, password: userpassword.text);
      } on FirebaseAuthException catch(error){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${error.code.toString()}")));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("My Login"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Container(
               margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                width:double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextFormField(
                      controller: userEmail,
                      decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "john@gmail.com",
                      label: Text("Enter Your Email"),
                      border:OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            width:double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
            ),
            child: TextFormField(
              controller: userpassword,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),

                hintText: "john@gmail.com",
                label: Text("Enter Your Email"),
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            // print(userEmail);
            // print(userpassword);
            login();
          }, child: Text("Login"))


        ],
      ),



    );
  }
}



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uuid/uuid.dart';


class Mylogin extends StatefulWidget {

  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}
TextEditingController username = TextEditingController();
TextEditingController userEmail = TextEditingController();
TextEditingController userpassword = TextEditingController();
TextEditingController useraddress = TextEditingController();

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    // void login()async{
    //   try{
    //     await FirebaseAuth.instance.signInWithEmailAndPassword(
    //         email: userEmail.text, password: userpassword.text);
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Login Successfully")));
    //
    //   } on FirebaseAuthException catch(error){
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${error.code.toString()}")));
    //   }
    // }
        void userregister()async{
          var userID = Uuid().v1();
          Map<String,dynamic> Userdata={
            "userid":userID,
            "Username":username.text,
            "UserEmail":userEmail.text,
            "Userpassword":userpassword.text,
            "Useraddress":useraddress.text,
          };
          await FirebaseFirestore.instance.collection("Userdata").doc(userID).set(Userdata);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Added"),));
        }
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text("My Login",style: TextStyle(
          fontSize: 30
        ),),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: username,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "enter name",
                prefixIcon: Icon(Icons.person),
                label: Text("Enter name"),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: userEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.email),
                hintText: "enter Email",
                label: Text("Enter Email"),
              ),
            ),
            SizedBox(height: 20,),

            TextFormField(
              controller: userpassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "enter Password",
                prefixIcon: Icon(Icons.key),
                label: Text("Enter passwrod"),
              ),
            ),            SizedBox(height: 20,),

            TextFormField(
              controller: useraddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "enter address",
                prefixIcon: Icon(Icons.location_off),
                label: Text("Enter address"),
              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.brown
              ),
              child: ElevatedButton(onPressed: (){
                userregister();
                useraddress.clear();
                userpassword.clear();
                userEmail.clear();
                username.clear();
              }, child: Text("Register")),
            )

          ],
        ),
      ),



    );
  }
}

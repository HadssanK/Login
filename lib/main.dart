import 'package:flutter/material.dart';

void main() {
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
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
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
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "john ",
                      label: Text("Enter Your Name"),
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
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),

                hintText: "john@gmail.com",
                label: Text("Enter Your Email"),
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Login"))


        ],
      ),



    );
  }
}



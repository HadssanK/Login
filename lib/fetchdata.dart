import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login/logijn_screen.dart';

class fetch extends StatefulWidget {
  const fetch({super.key});

  @override
  State<fetch> createState() => _fetchState();
}

class _fetchState extends State<fetch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FETCH DATA"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Mylogin(),));
          }, child: Text("Add Data")),
     
       StreamBuilder(
           stream: FirebaseFirestore.instance.collection("Userdata").snapshots(),
           builder: (context, snapshot){
             if(snapshot.connectionState==ConnectionState.waiting){
                CircularProgressIndicator();
             }
             if(snapshot.hasData) {
               var datalenth = snapshot.data!.docs.length;
               return ListView.builder(
                 itemCount: datalenth,
                 shrinkWrap: true,
                 itemBuilder: (context, index) {
                   var Name = snapshot.data!.docs[index]["Username"];
                   var email = snapshot.data!.docs[index]["UserEmail"];

                   return ListTile(
                     leading: Icon(Icons.person),
                     title: Text(Name),
                     subtitle: Text(email),
                   );
                 },
               );
             }
             if(snapshot.hasError){
               return Mylogin();
             }
             return Container();
             },
       ),
        ],
      ),
    );
  }
}

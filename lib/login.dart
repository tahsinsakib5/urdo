// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:urdo/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

   class _LoginState extends State<Login> {


 TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xfff8f8f8),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              width: 300,
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("login",style: TextStyle(fontSize: 30,color: Colors.pink,fontWeight: FontWeight.bold),),
                  const Text("welcom back",style: TextStyle(fontSize: 25,color:Colors.pink),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                 height: 250,
                 width: 450,
                child: Column(
                  children: [
                    TextField(
                      controller:controller1,
                      decoration: InputDecoration(
                        hintText: "emai",
                        fillColor: Color(0xfff5d8e4),
                        filled:true,
                        border: OutlineInputBorder(
                        borderSide:BorderSide.none,
                        )
                      )
                    ),
            
                         SizedBox(
                          height: 15,
                         ),
                     TextField(
                     controller: controller2,
                      decoration: InputDecoration(
                        hintText: "emai",
                        fillColor: Color(0xfff5d8e4),
                        filled:true,
                        border: OutlineInputBorder(
                        borderSide:BorderSide.none,
                        )
                      )
                    )
                  ],
                ),
              ),
            ),


            InkWell(
             onTap: () {
              addDataToDB();
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
             },
              child: Container(
                height: 60,
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 184, 179, 179)
                ),
                child: Center(child: Text("login")),
              ),
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have your acount"),
                Text("sing up",style: TextStyle(fontSize: 25,color: Colors.pink),),
              ],
            )
          ],
        ),
      ),
    );
  }

    Future<void> addDataToDB() async {
    var collection = await FirebaseFirestore.instance.collection('add_user');


   
    var data = {'number':controller1.text,"password":controller2.text};

    collection.add(data);
  }
}
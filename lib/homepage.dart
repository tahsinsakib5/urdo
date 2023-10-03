// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height:250,
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                child: Column(
                  children: const [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Icon(Icons.sort,color: Colors.white,size: 45,),
                       Icon(Icons.notifications,color: Colors.white,size: 45,),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 33,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 29,
                              backgroundImage: AssetImage("assets/sakib.jpg"),
                            ),
                          ),
                           SizedBox(
                            width: 17,
                           ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("tahsin saklib",style: TextStyle(fontSize: 20),),
                                Text("ewlco sakib our app"),
                              ],
                            )
                    
                          
                          
                        ],
                      ),
                      
                    
                    ),

                    TextField(
                      
                      decoration: InputDecoration(
                        hintText: "shearce",
                          fillColor: Color.fromARGB(255, 231, 180, 197),
                          filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        
                          
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          
          Container(
            child: Column(
              children: [
                
              ],
            ),
          )

          ],
        ),
      ),
    );
  }
}
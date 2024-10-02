import 'dart:ui';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  List profile=[
    ['Personal',Icons.person],
    ['Notification',Icons.notifications],
    ['General',Icons.add_box],
    ['Help',Icons.help],
    ['Settings',Icons.settings]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                        "PROFILE",
                        style:
                TextStyle(fontWeight: FontWeight.bold, color: Color(0xff0f2139)),
                      ),
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Color(0xFFe0e2e2),
              radius: 50,
              child: Icon(Icons.person),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              child: Text(
                "ALKAZIM",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFe0e2e2),
                    ),
                    height: 60,
                    width: 60,
                    child: Icon(
                      Icons.local_fire_department,
                      color: Colors.orange,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    child: Text("300 Calories \n    Burned",style: TextStyle(fontWeight: FontWeight.w600),),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFe0e2e2),
                    ),
                    height: 60,
                    width: 60,
                    child: Icon(
                      Icons.directions_walk,
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    child: Text("500 Steps \n   Walked",style: TextStyle(fontWeight: FontWeight.w600),),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color:Color(0xFFe0e2e2),),
              height: 280,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: profile.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Icon(profile[index][1],color: Color(0xff0f2139),),
                           SizedBox(
                            width: 10,
                           ),
                           Text(profile[index][0],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                  ),
                );
              },),
            ),
          )
        ],
      ),
    );
  }
}

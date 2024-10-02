import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'Second Screen List View.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Kazim",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            )
          ],
        ),
        toolbarHeight: 90,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(child: Icon(Icons.notifications_none_outlined)),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff0f2139)),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Excellent todays your",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("plan is almost done",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(110, 0),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14))),
                            onPressed: () {
                              Navigator.pushNamed(context, 'Second Screen');
                            },
                            child: Text(
                              "View Plan",
                              style: TextStyle(
                                  color: Color(0xff0f2139), fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(children: [
                      Align(
                        //widthFactor: 2,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white38,
                            strokeCap: StrokeCap.round,
                            strokeAlign: 3.8,
                            strokeWidth: 10,
                            value: 0.8,
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            "80%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))
                    ])
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Category",
                      style: TextStyle(
                          color: Color(0xff0f2139),
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                ),
                Container(
                  child: Text(
                    " See all",
                    style: TextStyle(color: Color(0xff0f2139), fontSize: 12),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Color(0xff0f2139),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    )),
                              ),
                              Text(
                                "Personal Plan",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff0f2139)),
                              )
                            ],
                          ),
                          Text("3 Plans Remaining"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Go to Plan"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFe0e2e2),
                      ),
                      height: 100,
                      width: 170,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Color(0xff0f2139),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                    )),
                              ),
                              Text(
                                "Work Plan",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff0f2139)),
                              )
                            ],
                          ),
                          Text("8 Plans Remaining"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Go to Plan"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFe0e2e2),
                      ),
                      height: 100,
                      width: 170,
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // width: MediaQuery.of(context).size.width,
                  child: Text("On Going Plan",
                      style: TextStyle(
                          color: Color(0xff0f2139),
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                ),
                Container(
                  child: Text(
                    " See all",
                    style: TextStyle(color: Color(0xff0f2139), fontSize: 12),
                  ),
                )
              ],
            ),
            SecondScreenList()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff0f2139),
        shape: CircularNotchedRectangle(), // Creates the notch for the FAB
        notchMargin: 8.0, // Space around the FAB
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.calendar_month, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, 'Plan details');
              },
            ),
            SizedBox(width: 40), // This ensures space for the FAB in the center
            IconButton(
              icon: Icon(Icons.auto_graph, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, 'Profile Page');

              },
            ),
          ],
        ),
      ),
    );
  }
}

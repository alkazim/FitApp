import 'package:dribble/Gridview.dart';
import 'package:dribble/calender.dart';
import 'package:flutter/material.dart';

import 'Activity.dart';

class Plandetails extends StatelessWidget {
  const Plandetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Plan Details"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        //height: MediaQuery.of(context).size.height,
       // width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height:100,
                  child: Calender()),
              Container(
                alignment: Alignment.topLeft,
                child: Text("Workout Report",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                  height:20
              ),
             GridviewDes(),
              SizedBox(
                  height:2
              ),
                Align(alignment: AlignmentDirectional.topStart,
                    child: Text("Activity",style: TextStyle(fontWeight: FontWeight.bold ))),
              SizedBox(
                  height:2
              ),
              ActivityList()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape: CircleBorder(),
        backgroundColor: Colors.green,
        child: Icon(Icons.add,color: Colors.white),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
      
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image(
                    image: AssetImage(
                        'lib/assets/workout.jpeg'),fit: BoxFit.cover,),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Manage Your Daily",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),),
                      Text("Activity So Easily",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),),
                      SizedBox(
                        height: 10
                      ),
                      Text("This smart tool is designed to help you",style: TextStyle(fontSize: 15),),
                      Text("manage your daily activity",style: TextStyle(fontSize: 15),),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          style:ElevatedButton.styleFrom(
                             fixedSize: Size(MediaQuery.of(context).size.width, 50),
                              backgroundColor: Color(0xff0f2139),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          onPressed: (){
                            Navigator.pushNamed(context, 'Second Screen');
                          },
                            child: Text("Get Started",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.65,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

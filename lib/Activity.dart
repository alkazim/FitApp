import 'package:flutter/material.dart';

class ActivityList extends StatefulWidget {
  ActivityList({super.key});

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  List boolvalues = [false, false, false, false, false, false,false];
  List values=['Stretching','Jogging','Walking','Yoga','WeightLifting','Workout','WeightLifting'];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height/2,
        child: ListView.builder(
       //   shrinkWrap: true,
          itemCount: values.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),   color: Color(0xFFf5f7f9)),
                child: Row(
                  children: [
                    Container(
                      child: Checkbox(
                        shape: CircleBorder(),
                        checkColor: Colors.white,
                        activeColor: Colors.green,
                          value: boolvalues[index],
                          onChanged: (bool? value) {
                            setState(() {
                              boolvalues[index] = value;
                            });
                          }),
                    ),
                    Container(

                      child: Text(values[index]),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

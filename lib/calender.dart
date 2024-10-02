import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  Calender({super.key, this.Day, this.Date});

  final String? Day;
  final String? Date;



  List date = [
    ['Mon', '20', null,Colors.black],
    ['Tue', '21', Color(0xFF0f2039),Colors.white],
    ['Wed', '22', null,Colors.black],
    ['Thu', '23', null,Colors.black],
    ['Fri', '24',null,Colors.black],
    ['Sat','25',null,Colors.black]
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: date.length,
      itemBuilder: (context, index) {
        return Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: date[index][2]),
                    height: 55,
                    width: 60,
                    child: Center(
                      child: Column(
                        //  mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            date[index][0],style: TextStyle(color: date[index][3]),
                          ),
                          Text(date[index][1],style: TextStyle(color: date[index][3]),)
                        ],
                      ),
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}

// class Calender1 extends StatelessWidget {
//   const Calender1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:  Column(
//         children: [
//           Text("Thu"),
//           Text("22")
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SecondScreenList extends StatefulWidget {
  SecondScreenList({super.key});

  @override
  State<SecondScreenList> createState() => _SecondScreenListState();
}

class _SecondScreenListState extends State<SecondScreenList> {
  // bool value = false;

  List boolvalues=[
    [false,false],
    [false,false],
    [false,false],
    [false,false]
  ];

  List items = [
    [
      Icons.book,
      'Creating webflow design and responsive on mobile',
      'Create Lo Fi',
      'Creating Landing Page'
    ],
    [
      Icons.directions_run_outlined,
      'Workout',
      'jogging',
      'Creating Landing Page'
    ],
    [
      Icons.book,
      'Creating webflow design and responsive on mobile',
      'Create Lo Fi',
      'Creating Landing Page'
    ],
    [
      Icons.directions_run_outlined,
      'Workout',
      'jogging',
      'Creating Landing Page'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Color(0xFFe0e2e2)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                              // width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Icon(items[index][0])),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            items[index][1],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            //overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.green,
                              value: boolvalues[index][0],
                              onChanged: (bool? value) {
                                setState(() {
                                  boolvalues[index][0] = value!;
                                });
                              }),
                        ),
                        Text(items[index][2]),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Checkbox(
                            checkColor: Colors.white,
                              activeColor: Colors.green,
                              value: boolvalues[index][1],
                              onChanged: (bool? value) {
                                setState(() {
                                  boolvalues[index][1] = value;
                                });
                              }),
                        ),
                        Text(items[index][3]),
                      ],
                    ),
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

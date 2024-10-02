import 'package:flutter/material.dart';

class GridviewDes extends StatelessWidget {
  const GridviewDes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      height: 160,
      width: MediaQuery.of(context).size.width,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3,
        ),

        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        // crossAxisCount: 2,

        children: [
          Container(
            //color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                    child: Icon(
                  Icons.local_fire_department,
                  color: Colors.orange,
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("130kkal",style: TextStyle(fontWeight: FontWeight.bold),),
                    Expanded(child: Text("Calories burn"))
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xFFf5f7f9),),
            // height: 60,
            // width: 60,

          ),
          Container(
            //color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("130kkal",style: TextStyle(fontWeight: FontWeight.bold),),
                    Expanded(child: Text("Calories burn",style: TextStyle(fontWeight: FontWeight.w300),))
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xFFf5f7f9),),
            // height: 60,
            // width: 60,

          ),
          Container(
            //color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("130kkal",style: TextStyle(fontWeight: FontWeight.bold),),
                    Expanded(child: Text("Calories burn"))
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xFFf5f7f9),),
            // height: 60,
            // width: 60,

          ),
          Container(
            //color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("130kkal",style: TextStyle(fontWeight: FontWeight.bold),),
                    Expanded(child: Text("Calories burn"))
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xFFf5f7f9),),
            // height: 60,
            // width: 60,

          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xff2E7D32), Color(0xff1B5E20)], begin: AlignmentGeometry.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(40)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('PLANT CARE', style: TextStyle(fontSize: 14, letterSpacing: 1, color: Colors.white),),
          Text('Weekly Tips to \nkeep them \nthriving', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
            },
            child:
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Explore guides", style: TextStyle(color: Colors.black),),
                Icon(Icons.arrow_forward, color: Colors.black,),
              ],
            ),
          )
        ],
      )
      );
  }
}

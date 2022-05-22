import 'package:flutter/material.dart';
import 'dart:math';

final _lightColors =[
  Colors.amber.shade300,
  Colors.lightGreen.shade300,
  Colors.lightBlue.shade300,
  Colors.orange.shade300,
  Colors.pinkAccent.shade100,
  Colors.tealAccent.shade100,
  Colors.redAccent.shade100,
  Colors.purpleAccent.shade100
];

class BusDetailCard extends StatefulWidget {
  const BusDetailCard({Key? key}) : super(key: key);

  @override
  State<BusDetailCard> createState() => _BusDetailCardState();
}


class _BusDetailCardState extends State<BusDetailCard> {
  
  @override
  Widget build(BuildContext context) {
  
    Random random = Random();
    int randomNumber = random.nextInt(8); 
    double minHeight=100;
  final color= _lightColors[randomNumber%_lightColors.length];
    return Card(
      color:color,
      margin: const EdgeInsets.all(10),
      child: Container(
        constraints: BoxConstraints(minHeight: minHeight),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Text(
                  'Bus Name',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize:25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  '12:00',
                  style: TextStyle(color: Colors.white,fontSize:40,fontWeight: FontWeight.w900),
                ),
                Text(
                  '10.00',
                  style: TextStyle(color: Colors.grey.shade700,fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
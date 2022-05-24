import 'package:flutter/material.dart';
import 'package:busapp/globals.dart' as globals;
import 'dart:math';

final _lightColors =[
  Colors.white,
  // Colors.amber.shade300,
  // Colors.lightGreen.shade300,
  // Colors.lightBlue.shade300,
  // Colors.orange.shade300,
  // Colors.pinkAccent.shade100,
  // Colors.tealAccent.shade100,
  // Colors.redAccent.shade100,
  // Colors.purpleAccent.shade100
];

class BusDetailCard extends StatefulWidget {
  const BusDetailCard({Key? key}) : super(key: key);

  @override
  State<BusDetailCard> createState() => _BusDetailCardState();
}

List <num>price=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];
Random random = Random();
int randprice=random.nextInt(price.length);
num rate=price[randprice];

class _BusDetailCardState extends State<BusDetailCard> {
  
  List<String> name=[
    '1',    '102',    '102A',    '102B',    '102C',    '104',    '105',    '105B',    '105C',    '108A',    '109',    '10A',    '10B',    '10C',    '11',    '113',    '11A',    '11B',    '11C',    '11D',    '11E',    '12', 
   '12A',    '12D',    '12F',    '12H',    '13A',    '13C',    '14',    '140',    '14A',    '14B',    '14C',    '14D',    '14E',    '15',    '16',    '16A',    '16B',    '18',    '19',    '19A',    '19B',    '19C',    '19D',  
  '19E',    '1A',    '1B',    '1C',    '1D',    '2',    '20',    '20A',    '20B',    '20C',    '20D',    '21',    '21A',    '21B',    '21C',    '22',    '22A',    '23A',    '24',    '25A',    '26',    '26A',    '27',    '27A', 
 '27B',    '27C',    '2B',    '2C',    '2D',    '3',    '30',    '30A',    '30B',    '30C',    '30D',    '30E',    '30F',    '30G',    '30H',    '30J',    '31A',    '31D',    '32',    '32A',    '32B',    '32C',    '32D',    '32E',    '32G',    '32H',    '32K',    '32M',    '33',    '33A',    '33B',    '33C',    '33D',    '33E',    '33F',    '33G',    '34',    '35',    '35A',    '36',    '37',    '38A',    '39',    '39A',    '3A',    '3B',    '3C',
'3D',    '3E',    '3G',    '3H',    '3M',    '3N',    '3R',    '3S',    '3T',    '4',    '40',    '40A',    '40B',    '41A',    '41B',    '41C',    '41D',    '41F',    '42A',    '43',    '43A',    '45',    '45A',    '45B',    '45C',    '45D',    '45E',    '4A',    '4B',    '4C',    '4D',    '4E',    '4H',    '4K',    '4M',    '4N',    '5',    '52',    '53',    '54',    '55',    '55A',    '55B',    '57',    '57A',    '59',    '59A',    '59C',    '5C',    '61',
   '62',    '63',    '64',    '64B',    '64D',    '64E',    '65',    '65A',    '68',    '69',    '69A',    '69B',    '69C',    '6A',    '7',    '70',    '70A',    '70B',    '71A',    '72',    '72A',    '73B',    '74',    '76',  
 '77',    '77A',    '77B',    '78',    '7C',    '8',    '80',    '88',    '8A',    '9',    '90',    '90A',    '90B',    '92',    '9A',    'S1',    'S10',    'S11',    'S12',    'S13',    'S14',    'S15',    'S15A',    'S16',    'S17',    'S18',    'S19',    'S2',    'S21',    'S21A',    'S21B',    'S23',    'S23A',    'S23B',    'S24',    'S25',    'S26',    'S27',    'S3',    'S30',    'S3A',    'S3B',    'S6',    'S7',    'S7A',    'S8',    'S9', 
 'S9A',    'S9B',    'S9D',
];
List<String> time=[
    '00:00','00:30','1:00','1:30','2:00','2:30','3:00','3:30','4:00','4:30','5:00','5:30','6:00','6:30','7:00','7:30','8:00','8:30','9:00','9:30',
    '10:00','10:30','11:00','11:30','12:00','12:30','13:00','13:30','14:00','14:30','15:00','15:30','16:00','16:30','17:00','17:30','18:00','18:30','19:00','19:30',
    '20:00','20:30','21:00','21:30','22:00','22:30','23:00','23:30', 
];

  @override
  Widget build(BuildContext context) {
  
    int randomNumber = random.nextInt(8); 
    int randbus=random.nextInt(name.length);
    int randtime=random.nextInt(time.length);
    
    globals.rate=rate;
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
              children: [
                Text(name[randbus],
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize:25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  time[randtime],
                  style: const TextStyle(color: Color.fromARGB(255, 255, 217, 0),fontSize:40,fontWeight: FontWeight.w900),
                ),
                Text(
                  '\u{20B9}${price[randprice]}',
                  style: const TextStyle(color: Colors.greenAccent,fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
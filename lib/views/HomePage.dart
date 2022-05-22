import 'package:busapp/views/BusDetailsPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String destinationValue = 'Destination';
  String fromValue = 'From';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bussify'),
        ),
        body: Center(
          child: Container(
            color: Colors.black26,
            width: double.infinity,
            child: Column(children: <Widget>[
              Container(
                width: 750,
                margin: const EdgeInsets.all(10),
                child: const ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  child: Image(
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/view-from-back-seat-at-coach-bus-more-seats-in-blurred-background-picture-id1137539144?k=20&m=1137539144&s=612x612&w=0&h=4_Ct_m48W1qyybqJ9WAgIT-bjZInqMljQSVx7lxXld4='),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() => {});
                  },
                  icon: const Icon(
                    Icons.directions_transit,
                  )),
              SizedBox(
                width: 400,
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: fromValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      fromValue = newValue!;
                    });
                  },
                  items: <String>[
                    'From',
                    'Delhi ',
                    'Mumbai',
                    'Chennai',
                    'Kolkata'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: 400,
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: destinationValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      destinationValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Destination',
                    'Delhi ',
                    'Mumbai',
                    'Chennai',
                    'Kolkata'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height:10,
              ),
              SizedBox(
                height:50 ,
                width: 200,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BusDetailsPage()),
                      );
                  },
                  child: const Text('Search Buses '),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

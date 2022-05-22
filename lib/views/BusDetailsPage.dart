import 'package:busapp/widgets/BusDetailCard.dart';
import 'package:busapp/widgets/BackgroundWidget.dart';
import 'package:flutter/material.dart';

class BusDetailsPage extends StatefulWidget {
  const BusDetailsPage({Key? key}) : super(key: key);

  @override
  State<BusDetailsPage> createState() => _BusDetailsState();
}

class _BusDetailsState extends State<BusDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const BackgroundImage(),
          SizedBox(
            height: 200,
            child: Card(
            color: const Color.fromARGB(200, 255, 255, 255),
            margin: const EdgeInsets.all(20),
            child: Center(
              child: Container(
                constraints: const BoxConstraints(minHeight:150,maxHeight: 150),
                padding: const EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'From',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.compare_arrows_outlined,
                    ),
                    Column(
                      children: const [
                        Text(
                          'To',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
          

          Container(
            padding: const EdgeInsets.fromLTRB(20, 200, 20, 0),
            height:600,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: const BusDetailCard(),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    height:5,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

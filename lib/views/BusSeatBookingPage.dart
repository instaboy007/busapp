import 'package:busapp/widgets/BackgroundWidget.dart';
import 'package:flutter/material.dart';

class BusSeatBookingPage extends StatefulWidget {
  const BusSeatBookingPage({Key? key}) : super(key: key);

  @override
  State<BusSeatBookingPage> createState() => _BusSeatBookingPageState();
}

class _BusSeatBookingPageState extends State<BusSeatBookingPage> {
  var _chairStatus = [
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
  ];

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
                  constraints:
                      const BoxConstraints(minHeight: 150, maxHeight: 150),
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
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: SizedBox(
                height:380,
                child: Card(
                  color: Color.fromARGB(220, 255, 255, 255),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 250,
                    child: Column(
                      children: <Widget>[
                        for (int i = 0; i < 9; i++)
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            child: Row(
                              children: <Widget>[
                                for (int x = 1; x < 6; x++)
                                  Expanded(
                                    child: (x == 3)
                                        ? Container()
                                        : Container(
                                            margin: EdgeInsets.all(2),
                                            child: _chairStatus[i][x - 1] == 1 ? availableChair(i, x - 1) : _chairStatus[i][x - 1] == 2
                                                    ? selectedChair(i, x - 1)
                                                    : reservedChair(),
                                          ),
                                  ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget selectedChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 1;
        setState(() {});
      },
      child: Container(
        height: 30,
        width: 10,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(3.0)),
      ),
    );
  }

  Widget availableChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 2;
        setState(() {});
      },
      child: Container(
        height: 30,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(
            color: Color.fromARGB(255, 150, 150, 150),
            width: 1,
          ),
        ),
      ),
    );
  }

  Widget reservedChair() {
    return Container(
      height: 30,
      width: 10,
      decoration: BoxDecoration(
          color: Color.fromRGBO(15, 15, 15, 0.24),
          borderRadius: BorderRadius.circular(3.0)),
    );
  }
}

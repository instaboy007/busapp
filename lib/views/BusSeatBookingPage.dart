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
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 121, 213, 255),
              boxShadow: const [BoxShadow(blurRadius: 10.0)],
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 25.0)),
            ),
            height: 160,
            padding: const EdgeInsets.all(65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'From',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Column(children: const [
                  Icon(
                    Icons.compare_arrows_outlined,
                    color: Colors.white,
                  ),
                ]),
                Column(
                  children: const [
                    Text(
                      'To',
                      style: TextStyle(
                        color: Colors.white,
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
      body: Stack(
        children: <Widget>[
          const BackgroundImage(),
          Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 180, 0, 0),
                  child: SizedBox(
                    height: 380,
                    child: Card(
                      color: Color.fromARGB(220, 255, 255, 255),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        width: 300,
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
                                                child: _chairStatus[i][x - 1] ==
                                                        1
                                                    ? availableChair(i, x - 1)
                                                    : _chairStatus[i][x - 1] ==
                                                            2
                                                        ? selectedChair(
                                                            i, x - 1)
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
                Container(
                  
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Book'),
                  ),
                ),
              ],
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
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(3.0)),
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

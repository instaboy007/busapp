import 'package:busapp/views/ticket.dart';
import 'package:busapp/widgets/BackgroundWidget.dart';
import 'package:flutter/material.dart';
import '../globals.dart' as globals;

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
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 121, 213, 255),
              boxShadow: [BoxShadow(blurRadius: 5.0)],
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 25.0)),
            ),
            height: 180,
            padding: const EdgeInsets.fromLTRB(10, 65, 10, 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.arrow_downward_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.arrow_upward_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          globals.src.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          globals.dest.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
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
                  padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: SizedBox(
                    height: 500,
                    child: Card(
                      color: const Color.fromARGB(220, 255, 255, 255),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        width: 300,
                        height: 400,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      for (int i = 0; i < _chairStatus.length; i++) {
                        for (int j = 0; j < 6; j++) {
                          if (_chairStatus[i][j] == 2) {
                            c += 1;
                          }
                        }
                      }
                      globals.tickets = c;
                      print(_chairStatus);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalState()));
                    },
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
        height: 50,
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
      child: SizedBox(
        height: 50,
        width: 10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            border: Border.all(
              color: Color.fromARGB(255, 150, 150, 150),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }

  Widget reservedChair() {
    return Container(
      height: 50,
      width: 10,
      decoration: BoxDecoration(
          color: Color.fromRGBO(15, 15, 15, 0.24),
          borderRadius: BorderRadius.circular(3.0)),
    );
  }
}

import 'package:busapp/views/HomePage.dart';
import 'package:busapp/views/LoginPage.dart';
import 'package:busapp/widgets/BackgroundWidget.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../globals.dart' as globals;

class finalState extends StatelessWidget {
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
          Container(
            width: 400,
            padding: const EdgeInsets.fromLTRB(20, 200, 20, 20),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Seats Confirmed!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 21,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  QrImage(
                    data:
                        "${globals.src}:${globals.dest}:${globals.tickets}:${globals.tickets * globals.rate}",
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(children: const [
                        Text(
                          'No of Seats',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ]),
                      Row(
                        children: const [
                          Text(
                            'Total Cost',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      
                      children: [
                      Row(children: [
                        Text(
                          '${globals.tickets}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            '${globals.tickets * globals.rate}',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ]),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      globals.tickets = 0;
                      globals.rate = 0;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Container(
                      width: 138,
                      height: 48,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(48),
                          topRight: Radius.circular(48),
                          bottomLeft: Radius.circular(48),
                          bottomRight: Radius.circular(48),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(255, 205, 5, 1),
                      ),
                      child: const Center(
                          child: Text(
                        'Done',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(9, 9, 9, 1),
                          fontFamily: 'Inter',
                          fontSize: 18,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

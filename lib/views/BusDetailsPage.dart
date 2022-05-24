import 'package:busapp/views/BusSeatBookingPage.dart';
import 'package:busapp/widgets/BusDetailCard.dart';
import 'package:busapp/widgets/BackgroundWidget.dart';
import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class BusDetailsPage extends StatefulWidget {
  const BusDetailsPage({Key? key}) : super(key: key);

  @override
  State<BusDetailsPage> createState() => _BusDetailsState();
}

class _BusDetailsState extends State<BusDetailsPage> {
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
                      width:20,
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
            padding: const EdgeInsets.fromLTRB(20, 180, 20, 20),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      globals.index = index;
                      await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BusSeatBookingPage(),
                      ));
                    },
                    child: const BusDetailCard(),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  height: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

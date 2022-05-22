import 'package:busapp/views/BusSeatBookingPage.dart';
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
          Container(
            padding: const EdgeInsets.fromLTRB(40, 180, 40, 0),
            height: 620,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () async {
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
        ],
      ),
    );
  }
}

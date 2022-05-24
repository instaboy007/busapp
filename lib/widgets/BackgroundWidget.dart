import 'package:flutter/material.dart';


class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: AssetImage("assets/images/bus_cover.jpg"),
        filterQuality: FilterQuality.low,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      );
  }
}
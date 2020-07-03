import 'dart:math';

import 'package:christmas_lights/light_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];

  Color color;

  cycleColors() {
    setState(() {
      color = colorList[Random().nextInt(5)];
    });
  }

  @override
  Widget build(BuildContext context) {
    cycleColors();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LightWidget(
            color: color,
          ),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:christmas_lights/light_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.lime,
    Colors.indigo,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            LightWidget(color: colorList[Random().nextInt(7)]),
          ],
        ),
      ),
    );
  }
}

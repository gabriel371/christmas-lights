import 'package:flutter/material.dart';

class LightWidget extends StatefulWidget {
  Color color;

  LightWidget({@required this.color});

  @override
  _LightWidgetState createState() => _LightWidgetState();
}

class _LightWidgetState extends State<LightWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _glowAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animationController.repeat(reverse: true);
    _glowAnimation = Tween(begin: 1.0, end: 5.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 40,
            width: 25,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.vertical(
                top: Radius.elliptical(10, 30),
                bottom: Radius.elliptical(10, 10),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: widget.color,
                  offset: Offset(0, 10),
                  spreadRadius: _glowAnimation.value,
                  blurRadius: _glowAnimation.value,
                ),
              ],
            ),
          ),
          Container(
            height: 15,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
            ),
          ),
        ],
      ),
    );
  }
}

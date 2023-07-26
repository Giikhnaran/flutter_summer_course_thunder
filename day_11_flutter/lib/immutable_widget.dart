import 'package:flutter/material.dart';
import 'dart:math' as Math;

class MyCoolApp extends StatelessWidget {
  const MyCoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    //build function

    return Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Transform.rotate(
              angle: 180 / Math.pi,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withAlpha(120),
                      spreadRadius: 4,
                      blurRadius: 15,
                      offset: Offset.fromDirection(1.0, 30),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: _buildShinyCircle(),
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: BoxDecoration(
          //box decoration widget
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.blueAccent,
            ],
            center: Alignment(-0.3, -0.5),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
            ),
          ]),
    );
  }
}

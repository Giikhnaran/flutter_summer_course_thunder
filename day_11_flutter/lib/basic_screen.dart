import 'package:day_11_flutter/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Flutter'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: MyCoolApp(),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: Text("I'm a drawer"),
        ),
      ),
    );

  }
}

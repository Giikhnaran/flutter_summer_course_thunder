import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GradientText(
          'hello', 43
        ),
      ),
      floatingActionButton: Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
            gradient: LinearGradient( //linearGradient class
                begin: Alignment.centerLeft, //tuhain ene class dah named parametertai constracturuud
                end: Alignment.centerRight,
                colors: [Color(0xFFE86B02)
                  , Color(0xFFFA9541)])),



      ),

    );
  }
}

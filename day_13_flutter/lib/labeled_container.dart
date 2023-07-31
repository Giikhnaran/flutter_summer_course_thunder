//array spread operator array= list= buh ymnii tsugluulga
//list= dynamic
import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  double? width;
  double? height;
  final Color color;
  final String text;
  Color? textColor;

  /// temdeg ni null buyu utgaui baij bolno

  LabeledContainer(
      {Key? key,
      this.width,
      this.height = double.infinity,
      required this.color,
      this.textColor,
      required this.text})
      : super(key: key);

//statelest widget
  @override
  //build method container ni doorh zuilsiig aguulna
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
        ));
  }
}

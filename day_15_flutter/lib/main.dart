//Lesson 15-stateful widget and interacting and button
//ternary operator vs if else
import 'package:day_15_flutter/Stop_watch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StopwatchApp());
}
class StopwatchApp extends StatelessWidget {
  const StopwatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StopWatch());
  }
}



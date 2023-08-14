import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();


  runApp(MaterialApp(
    home: SignUpScreen(),
  ));
}

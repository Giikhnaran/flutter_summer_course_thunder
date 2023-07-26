import 'package:flutter/material.dart';
//factory father ni uuruu automath aar uuruu uuuriiguu uusgehiig helne
//flutter day_01
//flutter buh zuil widget=belen baigaa defined class uusgedeg. Belen toosgo ashiglana
//function uudee ashiglahdaa material app daa oruulj ugnu

void main() {
  runApp(MySuperApp());
}

class MySuperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build method yoom
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Ribeye'),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello Khangai'),
          ),
          body: Container(
            child: Center(
              child: Text(
                'Hello Body',
                style: TextStyle(color: Colors.greenAccent, fontSize: 34),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: printMe,
            child: Image.asset('assets/images/fb.png'),
          ),
        ));
  }
}

void printMe() {
  print('Hello me');
}

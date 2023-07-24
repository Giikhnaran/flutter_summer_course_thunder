import 'package:flutter/material.dart';
//factory father ni uuruu automath aar uuruu uuuriiguu uusgehiig helne
//flutter day_01
//flutter buh zuil widget=belen baigaa defined class uusgedeg. Belen toosgo ashiglana
//function uudee ashiglahdaa material app daa oruulj ugnu

void main() {
  //1
  final Container container = Container(
    //6 zaaval Container container = container geed object oo nerleh shaardlagagui
    child: Text('Hello World'), //container dotor gants l child baidag
  );

  final FloatingActionButton iconButton =
      FloatingActionButton(onPressed: () {}); //4
  final Scaffold myScaffold = Scaffold(
    //5

    //text widget
    appBar: AppBar(
      //6
      title: Text('Welcome'), //parameter=argument
    ),

    //container widget
    body: Container(

      //center widget
      child: Center(
        child: Text('Hello Body',
            style: TextStyle(fontSize: 34, color: Color(0xFFF06292))),
      ), //7
    ),

    //Icon Widget
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.thumb_up),
    ), //8
  );
  final MaterialApp app = MaterialApp(
    //2
    theme: ThemeData(
        fontFamily:
            'Ribeye'), //ribeye ni shine ungiin font //Google font oos avdag
    home: myScaffold,
  );
  runApp(app); //3
}

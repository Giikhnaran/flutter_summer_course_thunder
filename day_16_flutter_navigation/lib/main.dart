import 'package:day_16_flutter_navigation/page_one.dart';
import 'package:flutter/material.dart';
import 'package:day_16_flutter_navigation/page_two.dart';

void main() {
  runApp(const MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //matterial app ruga scaffold  oo orulj ugj bn
      appBar: AppBar(
        title: Text('Home'),
        leading:
            ElevatedButton(onPressed: (

                ) {
              Navigator.push(context, MaterialPageRoute(builder:(context)=> const PageOne()));
            }, child: Icon(Icons.arrow_forward)),
      ),
      body: Center(child: Text('Home Page')),
    );
  }
}

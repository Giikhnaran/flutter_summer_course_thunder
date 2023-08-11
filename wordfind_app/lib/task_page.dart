import 'package:flutter/material.dart';
import 'package:wordfind_app/data/questions.dart';
import 'package:wordfind_app/task_widget.dart';

import 'models/task_model.dart';
import 'models/user_model.dart';

class Taskpage extends StatefulWidget {
  final User user;

  const Taskpage(this.user,{super.key});

  @override
  State<Taskpage> createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  late List<TaskModel> listQuestions ;
  GlobalKey<TaskWidgetState> globalKey= GlobalKey();
  late User user;
  @override
  void initState() {
    listQuestions = questions;
    user = widget.user;
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/images/arrow_back.png'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(user.userName,
            style: TextStyle(fontSize: 24, color: Color(0xFFE86B02))),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back2.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Expanded(child: LayoutBuilder(
                builder: (context, constraints){
                  return TaskWidget(constraints.biggest, listQuestions.map((question) => question.clone()).toList(),key: globalKey  );
                },
              )),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFFA9541), Color(0xFFE86B02)]),
                      //colors tohioldold [] haaltand parameter ee duudj ugnuu
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent , elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),

                      onPressed: () //parameters
                      {globalKey.currentState?.generatePuzzle( loop: listQuestions.map((question) => question.clone()).toList(),); },
                      child: Text('Reload', style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 24,
                          fontWeight: FontWeight.w600
                      )),

                  ),
                ),
              ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}

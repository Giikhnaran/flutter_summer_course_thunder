import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/task_page.dart';

import 'models/user_model.dart';

User newUser = User(0, "Guest");

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    void _createUser(String userName) {
      setState(() {
        newUser.userName = userName;
      });
    }

    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              User newUser = User(0, "Guest");
            },
            icon: Image.asset('assets/images/arrow_back.png')),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50,
          child: Image.asset('assets/images/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back2.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                ),
              ),
              Image.asset('assets/images/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText('Player Name', 20),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              InputField(
                onSubmitted: _createUser,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton(
          newUser), //Stateless widget ees class uusgej baij startbutton object uusgene

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class StartButton extends StatelessWidget {
  User newUser;
  StartButton(this.newUser, {super.key});

  @override
  Widget build(BuildContext context) {
    return newUser.userName == "Guest"
        ? Container()
        : Container(
            width: 310,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
                borderRadius: BorderRadius.circular(
                    25) //color list avahdaaa durvuljin haaltan dotor turliin bicheed
                ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Taskpage(newUser)));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Text(
                  'Start',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700),
                )),
          );
  }
}

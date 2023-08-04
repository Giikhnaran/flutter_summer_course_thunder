import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0;
  bool isTicking = true; //property (тухайн цаг явж байгаа эсэхийг шалгах)
  late Timer timer; //property
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   timer = Timer.periodic(Duration(seconds: 1), _onTick); //on tick iig duudaj bn
  // }

  void _onTick(Timer timer) {
    setState(() {
      ++seconds;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      isTicking = false;
    });
  }

  void _stopTimer() {
    timer.cancel();

    setState(() {
      isTicking = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$seconds ${_secondsText()}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: isTicking ? _startTimer : null,
                child: Text('start'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(Colors.white)),
              ),
              TextButton(
                  onPressed: isTicking ? null : _stopTimer,
                  child: Text(
                    'Stop',
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor:
                          MaterialStateProperty.all(Colors.white))),
            ],
          ),
        ],

        // child: Text('$seconds ${_secondsText()}', //String interpolation = $ sign aaraa tuhain function oo duudj bn
        //     style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }

  String _secondsText() => seconds == 1 ? 'second ' : 'seconds';

  @override // ene funciton iig zaaval override aar duudaj ugnu
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}

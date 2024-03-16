import 'package:flutter/material.dart';
import './qustions.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qusIndex = 0;

  void answerQus() {
    setState(() {
      qusIndex = qusIndex + 1;
    });
    print(qusIndex);
  }

  @override
  Widget build(BuildContext context) {
    var qustions = [
      '(1) what is your favourite colour ??',
      '(2) what is your favourite animal ??',
      '(3) what is your favorite hero ??',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3:   true

      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('QUIZ APP'),
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: Column(
            children: <Widget>[
              Qustion(qustions.elementAt(qusIndex)),
              ElevatedButton(


                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                child: Container(

                  alignment: Alignment.center,
                  width: double.infinity,
                    child: Text('answer 1')),
                onPressed: () => answerQus(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                child: Container(
                  alignment: Alignment.center,
                    width: double.infinity,
                    child: Text('answer 2')),
                onPressed: () => answerQus(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text('answer 2')),
                onPressed: () => answerQus(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text('answer 2')),
                onPressed: () => answerQus(),
              ),
            ],
          ),
     ),
    );
  }
}

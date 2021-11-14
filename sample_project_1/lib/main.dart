import 'package:flutter/material.dart';
import './questions.dart';

void main() {
  runApp(second());
}

class second extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyApp();
  }
}

class MyApp extends State<second> {
  var counter = 0;
  void call() {
    setState(() {
      counter = counter + 1;
    });
    print("function called $counter times");
  }

  var questions = [
    "How are You, Upendra ?",
    "what are You, Upendra ?",
    "when are You, Upendra ?",
    "where are You, Upendra ?",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(questions.elementAt(counter)),
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              hello(questions[counter]),
              ElevatedButton(
                onPressed: call,
                child: Text("option_1"),
              ),   
              ElevatedButton(
                onPressed: call,
                child: Text("option_2"),
              ),
              ElevatedButton(
                onPressed: call,
                child: Text("option_3"),
              ),
              ElevatedButton(
                onPressed: call,
                child: Text("option_4"),
              ),
            ],
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      //theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
    );
  }
}

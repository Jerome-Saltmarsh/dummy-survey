import 'package:flutter/material.dart';
import 'dart:html';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void surveySuccess(){
    window.location.href = "#bitlabs-event:/success";
  }

  void surveyFail(){
    window.location.href = "#bitlabs-event:/fail";
  }

  void surveyScreenOut(){
    window.location.href = "#bitlabs-event:/screenout";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: surveySuccess,
                child: Text('Survey Success')),
            OutlinedButton(
                onPressed: surveyFail,
                child: Text('Survey Failed')),
            OutlinedButton(
                onPressed: surveyScreenOut,
                child: Text('Survey Screenout'))
          ],
        ),
      ),
    );
  }
}

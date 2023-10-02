import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Кнопка по центру с счетчиком нажатий'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Кол-во нажатий:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Тык'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
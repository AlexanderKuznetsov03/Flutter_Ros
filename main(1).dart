import 'package:flutter/material.dart';

void main() => runApp(SimpleWidget());
class ScreenWidget extends StatelessWidget {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold ( 
        appBar: AppBar(title: const Text('StatelessWidget'),
        ),
      ),
      );
  }
}

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child:
      Center(child: Text('Мой текст', textDirection: TextDirection.ltr, style: TextStyle( color: Colors.white, fontSize: 40, fontFamily: 'Time New Roman'), )));
  }
}
      
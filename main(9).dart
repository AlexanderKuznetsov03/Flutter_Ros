import 'package:flutter/material.dart';


void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'ShadowsInto'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Fonts'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Roboto font',
                style: TextStyle(
                   fontFamily: 'Roboto',
                   fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              Text(
                'PixelifySans Font',
                style: TextStyle(fontSize: 30, fontFamily: 'PixelifySans'),
              ),
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}
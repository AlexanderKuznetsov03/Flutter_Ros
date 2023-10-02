import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container widget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://w7.pngwing.com/pngs/1020/310/png-transparent-trollface-internet-troll-rage-comic-trolls-miscellaneous-template-white.png',
            ),
            fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black,
            width: 10,
        ),
          
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 5.0,
              spreadRadius: 5.0,
              offset: Offset(-5, 5),
            ),
          ],
        ),
        child: Text(
          'Troll',
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }
}

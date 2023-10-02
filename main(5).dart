import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Widget'),
        ),
        body: ListViewCustomWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text("1"),
        Text("2"),
        Text("3"),
        Text("4"),
        Text("5"),
        Text("6"),
        Text("7"),
        Text("8"),
        Text("9"),
        Text("10"),
      ],
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return TextWidget(text: '$index');
        });
  }
}

class ListViewSeparatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return TextWidget(text: "$index");
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black);
        },
        itemCount: 20);
  }
}

class ListViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.custom(childrenDelegate:
        SliverChildBuilderDelegate((BuildContext context, int index) {
      return TextWidget(text: "$index");
    }));
  }
}
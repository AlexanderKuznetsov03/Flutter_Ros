import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Widget'),
        ),
        body: GridViewWidget(),
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
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Количество столбцов
      children: <Widget>[
        TextWidget(text: "1"),
        TextWidget(text: "2"),
        TextWidget(text: "3"),
        TextWidget(text: "4"),
        TextWidget(text: "5"),
        TextWidget(text: "6"),
        TextWidget(text: "7"),
        TextWidget(text: "8"),
        TextWidget(text: "9"),
        TextWidget(text: "10"),
      ],
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: 20,
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
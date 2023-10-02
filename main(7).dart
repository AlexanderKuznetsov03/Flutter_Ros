import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PageView Widget'),
        ),
        body: PageViewWidget(controller: controller),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class PageViewWidget extends StatelessWidget {
  final PageController controller;

  PageViewWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: <Widget>[
        Container(
          color: Colors.red,
          child: Center(
            child: Text('Stop!'),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text('Ready?'),
          ),
        ),
        Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Go!',
                style: TextStyle(fontSize: 40),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.animateToPage(0,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInBack);
                },
                child: Text('Reload'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: index % 2 == 0 ? Colors.red : Colors.greenAccent,
          alignment: Alignment.center,
          child: Text('$index'),
        );
      },
    );
  }
}

class PageViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      childrenDelegate: SliverChildListDelegate([
        Text('1'),
        Text('2'),
        Text('3'),
      ]),
    );
  }
}
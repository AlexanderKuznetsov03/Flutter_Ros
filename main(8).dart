import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  @override
  _IndexedStackWidgetState createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int _index = 0;
  double size = 100.0;

  void _switchLayout() {
    if (_index != 2) {
      setState(() {
        _index++;
        size += 100.0;
      });
    } else {
      setState(() {
        _index = 0;
        size = 50.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndexedStack(
            index: _index,
            children: [
              AnimatedSquare(
                size: size,
                color: Colors.redAccent,
              ),
              AnimatedSquare(
                size: size,
                color: Colors.orangeAccent,
              ),
              AnimatedSquare(
                size: size,
                color: Colors.greenAccent,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              _switchLayout();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
            ),
            child: const Text('Color Button'),
          )
        ],
      ),
    );
  }
}

class AnimatedSquare extends StatelessWidget {
  final double size;
  final Color color;

  AnimatedSquare({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInBack,
      duration: Duration(seconds: 1),
      width: size,
      height: size,
      color: color,
    );
  }
}

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('IndexedStack Widget'),
    ),
    body: IndexedStackWidget(),
  ),
));
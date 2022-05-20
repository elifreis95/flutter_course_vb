import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  ColorDemos({Key? key}) : super(key: key);

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;
  void changedBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _colorOnTap,
          items: [
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.green), label: 'Green'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.red), label: 'Red'),
          ]),
    );
  }

  void _colorOnTap(int value) {
          if (value == _MyColors.blue.index) {
            changedBackgroundColor(Colors.blue);
          } else if (value == _MyColors.green.index) {
            changedBackgroundColor(Colors.green);
          } else if (value == _MyColors.red.index) {
            changedBackgroundColor(Colors.red);
          }
        }
}

enum _MyColors { blue, green, red }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}

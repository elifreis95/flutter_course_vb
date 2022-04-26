import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({Key? key}) : super(key: key);
  final ColorsItems colorsItems = ColorsItems();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
           
          Text('data', 
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Theme.of(context).errorColor ) ,),
        ],
      ),
    );
  }
}

class ColorsItems {
  static const  Color deluge =  Color(0xff7563A8);
  static const Color hibiscus =  Color.fromRGBO(182, 49, 108, 1);
}

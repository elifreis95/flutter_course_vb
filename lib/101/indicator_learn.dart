import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenterCircularWhiteProgess()],
      ),
      body: LinearProgressIndicator(),

    );
  }
}

class CenterCircularWhiteProgess extends StatelessWidget {
  const CenterCircularWhiteProgess({
    Key? key,
  }) : super(key: key);
  final whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color:whiteColor ,
        strokeWidth: 4,
        //value: 0.9,
        
        backgroundColor: Colors.pink[200],
      ),
    );
  }
}

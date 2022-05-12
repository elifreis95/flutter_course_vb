import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: RandomImage(),
                  bottom: _cardHeight/2,
                  
                ),
                Positioned(
                  height: _cardHeight,
                  bottom: 0,
                  width: 200,
                  child: Card(
                    child: Center(
                      child: Text('data', 
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.pink[300])),),
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}

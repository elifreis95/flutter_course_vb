import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
           
          Card(
            color: Theme.of(context).colorScheme.error,
            child:const  SizedBox(
              height: 100,
              width: 100,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
           _CustomCard(child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(
              child: Text('Hello world')),
          ) )
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
   _CustomCard({
    Key? key,required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    
    return Card(
      margin:ProjectMargins.cardMargin,
      child: child,
      shape: roundedRectangleBorder,
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

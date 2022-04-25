import 'dart:html';

import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold samples'),
      ),
      body: const Text('Merhaba'),
      backgroundColor: Colors.purple[200],
      extendBody: true,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        
        height:100 ,
         
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_outlined), label: 'a'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_outlined), label: 'b'),
        ]),
      ),
    );
  }
}

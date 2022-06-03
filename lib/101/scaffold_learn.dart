import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Samples',
        style: TextStyle(color: Colors.tealAccent)
        ),
      ),
      body: const Text('Hello',
      style: WelcomeTextStyle()),
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
      drawer: Drawer(
        child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  ListTileLearn(),
                  ),
                );
              },
              child: Text(ScaffoldText.title,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(color:Colors.purple[200])
              )
              ),
              
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
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
class ScaffoldText {
  static String title = 'Go To List Tile View';  
}
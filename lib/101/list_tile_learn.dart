import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: RandomImage(),
                  
                  onTap: () {},
                  subtitle: Text('How do you use your card'),
                  minVerticalPadding: 0,
                  dense: true,
                  leading: Container(
                    height: 200,
                    width: 30,
                    alignment: Alignment.center,
                    color: Colors.indigo[300],
                    child: Icon(Icons.money)),
                  trailing: SizedBox(
                    width: 20,
                    child: Icon(Icons.chevron_right)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

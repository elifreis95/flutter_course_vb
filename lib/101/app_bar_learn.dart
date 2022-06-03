import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);

  final String _title = 'Welcome World';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Text(_title)),
          leading: IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.chevron_left)),
            //systemOverlayStyle: SystemUiOverlayStyle.light,
            //centerTitle: true,
            //backgroundColor: Colors.transparent,
            //elevation: 0,
            //actionsIconTheme: const IconThemeData(color: Colors.pink),
            //toolbarTextStyle: const TextStyle(color: Colors.purple),
            
          actions: [IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.mark_email_unread_sharp)),
            const Center(child: CircularProgressIndicator())
            ],
            
      ),
      body: Column(children: const[],),
    );
  }
}

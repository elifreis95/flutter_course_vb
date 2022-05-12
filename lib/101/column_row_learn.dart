import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  ColumnRowLearn({
    Key? key,
  }) : super(key: key);
  final ProjectDataText text = ProjectDataText();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.indigo[300])),
                  Expanded(child: Container(color: Colors.red[300])),
                  Expanded(child: Container(color: Colors.blue[300])),
                  Expanded(child: Container(color: Colors.purple[300])),
                ],
              )),
          Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('a'),
                  Text('a2'),
                  Text('a3'),
                ],
              )),
          SizedBox(
            
            height: ProjecContainerSizes.cardHeight,
            child: Column(
              children: [
                Expanded(child: Text(text.dataText)),
                Expanded(child: Text(text.dataText)),
                Expanded(child: Text(text.dataText)),
                Spacer(),
                Expanded(child: Text(text.dataText)),
                ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjecContainerSizes {
  static double cardHeight = 200;
}

class ProjectDataText {
  final String dataText = 'Data';
}



//logolar %25'lik alanları kendisine alarak ekranda gözükür = expanded 
//expanded sadece row ve column larda kullanılır. 
//flex 
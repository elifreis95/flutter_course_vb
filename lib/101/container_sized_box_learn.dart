import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('Hello' * 500),
          ),
          const SizedBox.shrink(), //ekranda boş bir alan yaratır.
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            height: 50,
            constraints: const BoxConstraints(
                maxWidth: 200, minWidth: 100, minHeight: 10, maxHeight: 120),
            child: Text(
              'Elif' * 5,
              maxLines: 2,
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(10),
            decoration: GreenBoxDecoration(),
          )
        ],
      ),
    );
  }
}
// burada class olusturulur ve icindeki statik variable kullanılmak istedigi
//yerde cagirilir
class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.blue, Colors.green]),
      boxShadow: const [
        BoxShadow(
          color: Colors.green,
          offset: Offset(0.1, 1),
          blurRadius: 12,
        )
      ],
      border: Border.all(width: 10, color: Colors.white10));
}
// class ozellıkleri alınmak istenen üst classa extend edilir.
// ust classa ait ozelliklerin parametre degerleri super icerisinde verilir
class GreenBoxDecoration extends BoxDecoration {
  GreenBoxDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.blue, Colors.green]),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                offset: Offset(0.1, 1),
                blurRadius: 12,
              )
            ],
            border: Border.all(width: 10, color: Colors.white10));
}

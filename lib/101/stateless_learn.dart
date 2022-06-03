import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  final String text1 = "data";
  final String text2 = "data2";
  final String text3 = "data3";
  final String text4 = "data4";

  const StatelessLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitleTextWidget(text: text1),
          _emptyBox(),
           TitleTextWidget(text: text2),
          _emptyBox(),
           TitleTextWidget(text: text3),
          _emptyBox(),
           TitleTextWidget(text: text4),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(
        height: 10,
      );
}

//extract widget
class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28), color: Colors.pink[400]),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  //text null gelebilirse yani değer gelmeyebilirse
  //'final String? text' required yok

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}

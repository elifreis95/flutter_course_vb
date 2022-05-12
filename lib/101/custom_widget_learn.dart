

import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';
  final String title2 = 'Add to cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: _PaddingUtility().symmetricHorizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(
                    title: title2, callback: () {  },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            CustomFoodButton(
              title: title,
              callback: () {
                
              } ,
            ),
          ],
        ));
  }
}

class _ColorUtility {
  final Color textColor = Colors.white;
  final Color buttonColor = Colors.red;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(10);
  final EdgeInsets normal2xPadding = EdgeInsets.all(20);
  final EdgeInsets symmetricHorizontal = EdgeInsets.symmetric(horizontal: 10);
}

class CustomFoodButton extends StatelessWidget
    with _ColorUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.callback}) : super(key: key);
  final String title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: buttonColor, shape: const StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: normal2xPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: textColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

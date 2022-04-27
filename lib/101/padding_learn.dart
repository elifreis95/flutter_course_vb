import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding.pagePaddingHorizontal,
              child: Container(
                color: Colors.white,
                 height: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                padding: EdgeInsets.zero, 
                color: Colors.blue[100], 
                height: 100),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly +
                  ProjectPadding.pagePaddingVertical,
              child: const Text('Elif'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 10);
}

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;

  void _updatePageIndex(int Index) {
    setState(() {
      _currentPageIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            Text(_currentPageIndex.toString()),
            Spacer(),
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: _CurvesUtility._curvesType);
              },
              child: Icon(Icons.chevron_left),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: _CurvesUtility._curvesType);
              },
              child: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: true,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          ImageLearn(),
          CardLearn(),
          IconLearnView(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}

class _CurvesUtility {
  static const _curvesType = Curves.slowMiddle;
}

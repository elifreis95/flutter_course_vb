import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/navigate_detail_learn.dart';
import 'package:flutter_full_learn/demos/my_collections_demos.dart';

class NavigationLearn extends StatefulWidget {
  NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index,bool isAdd) {
    setState(() {
     isAdd? selectedItems.add(index): selectedItems.remove(index) ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigatorToWidgetNormal<bool>(
                context, NavigateDetailLearn(
                  isOkey: selectedItems.contains(index),
                ));
            if (response is bool) {
              addSelected(index,response);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index)
                  ? Colors.deepPurple
                  : Colors.cyan,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        child: Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}

mixin NavigatorManager {
  void navigatorToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings(),
      ),
    );
  }

  Future<T?> navigatorToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        //fullscreenDialog: true,
        settings: RouteSettings(),
      ),
    );
  }
}

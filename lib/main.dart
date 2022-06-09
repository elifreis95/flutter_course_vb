import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/color_learn.dart';
import '202/model_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            tabBarTheme: TabBarTheme(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
            ),
            bottomAppBarTheme: BottomAppBarTheme(shape: CircularNotchedRectangle()),
            progressIndicatorTheme: ProgressIndicatorThemeData(
              color: Colors.white,
            ),
            listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
            cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            errorColor: ColorsItems.deluge,
            textSelectionTheme: TextSelectionThemeData(
                selectionColor: Colors.red, cursorColor: Colors.green, selectionHandleColor: Colors.black),
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.white,
              iconColor: Colors.red,
              labelStyle: TextStyle(color: Colors.purple),
              border: OutlineInputBorder(),
              floatingLabelStyle: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            textTheme: TextTheme(
              subtitle1: TextStyle(color: Colors.green),
            ),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actionsIconTheme: IconThemeData(color: Colors.white),
            )),
        home: ModelLearnView());
  }
}

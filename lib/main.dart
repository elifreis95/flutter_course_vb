
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

import '101/app_bar_learn.dart';
import '101/button_learn.dart';
import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import '101/indicator_learn.dart';
import '101/list_tile_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/stack_learn.dart';
import '101/stateful_learn.dart';
import '101/stateful_life_cycle_learn.dart';
import '101/stateless_learn.dart';
import '101/text_field_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle_view.dart';
import 'demos/note_demos_view.dart';
import 'demos/stack_demo_view.dart';


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
        progressIndicatorTheme: ProgressIndicatorThemeData(
          
          color: Colors.white,
          ),
          listTileTheme: ListTileThemeData(
            contentPadding: EdgeInsets.zero),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20))
        ),
        
        errorColor:  ColorsItems.deluge,
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Colors.red, 
          cursorColor: Colors.green,
          selectionHandleColor: Colors.black

        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          iconColor: Colors.red,
          labelStyle: TextStyle(color: Colors.purple),
          border: OutlineInputBorder(),
          floatingLabelStyle: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
        
        ),
        textTheme: TextTheme(subtitle1: TextStyle(color: Colors.green)),
        appBarTheme: const  AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actionsIconTheme:  IconThemeData(
            color: Colors.white),
        )
      ),
      home: ColorLifeCycleView()
      
    );
  }
}


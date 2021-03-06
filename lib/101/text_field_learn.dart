import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextField(
              maxLength: 50,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              focusNode: focusNodeTextFieldOne,
              autofocus: true,
              autofillHints: [AutofillHints.email],
              inputFormatters: [TextProjectInputFormatter()._formatter],
              textInputAction: TextInputAction.next,
              decoration: InputDecorator().emailInput,
            ),
            TextField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 2,
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.blue[100 * ((currentLength ?? 0) ~/ 2)],
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return newValue;
  });
}

class InputDecorator {
  final emailInput = InputDecoration(
      prefixIcon: Icon(Icons.mail),
      border: OutlineInputBorder(),
      labelText: LanguageItems.mailTitle);
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemo extends StatelessWidget {
  const NoteDemo({Key? key}) : super(key: key);
  final _title = 'Create Your First Note';
  final _desciption = 'Add note about anything and share it with the world';
  final _createNote = 'Create a Note';
  final _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Padding(
              padding: PaddingItems.verticalPadding,
              child: SizedBox(
                  height: 200,
                  width: 300,
                  child: PngImage(name: ImageItems().appleBook)),
            ),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(title: _desciption * 3),
            ),
            const Spacer(),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _createButton(context),
            ),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            SizedBox(
              height: ButtonHights.textButtonHeight,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHights.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

// center text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

//title widget
class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

// padding widget
class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHights {
  static const double buttonNormalHeight = 50;
  static const double textButtonHeight = 30;
}

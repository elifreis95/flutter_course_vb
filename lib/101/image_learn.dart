

import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: 400,
              child: PngImage(
                name: ImageItems().appleBook,
              )),
        ],
      ),
    );
  }
}

class ImageItems {
  final String roundFlowerFrame = "flower_frame";
  final String roundFloral =
      "69-694072_roses-rose-pinkroses-pink-flowers-flower-floral-circle.png.";
  final String roundFloralWithoutPath =
      "69-694072_roses-rose-pinkroses-pink-flowers-flower-floral-circle.png.";
  final String appleBook = "apple_book";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/png/$name.png',
      fit: BoxFit.fill,
    );
  }
}

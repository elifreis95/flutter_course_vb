import 'dart:ui';

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
            child: Image.asset(
              ImageItems().roundFloral,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String roundFlowerFrame =
      "assets/21-215322_floral-png-floral-png-round-flower-frame-png.png";
  final String roundFloral =
      "assets/png/69-694072_roses-rose-pinkroses-pink-flowers-flower-floral-circle.png.";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/png/$name.png',
      fit: BoxFit.cover,
    );
  }
}

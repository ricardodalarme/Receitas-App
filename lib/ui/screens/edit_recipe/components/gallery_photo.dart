import 'package:flutter/material.dart';

class GalleryPhoto extends StatelessWidget {
  GalleryPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 100,
        color: Colors.grey,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(''),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Image.asset(
              'assets/images/cvimage.png'), // Replace 'your_image.png' with the path to your image
        ),
      ),
    );
  }
}

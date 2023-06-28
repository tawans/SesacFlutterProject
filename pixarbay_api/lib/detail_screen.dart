import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String imageUrl;

  const DetailScreen({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Detail'),
      ),
      body: Center(
        // child: Text(
        //   'Image Detail',
        //   style: TextStyle(fontSize: 24),
        // ),
        child: Hero(
          tag: imageUrl,
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}

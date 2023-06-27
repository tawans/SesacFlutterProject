import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    String? imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Detail'),
      ),
      body: const Center(
        child: Text(
          'Image Detail',
          style: TextStyle(fontSize: 24),
        ),
        // child: Hero(
        //   tag: imageUrl,
        //   child: Image.network(imageUrl),
        // ),
      ),
    );
  }
}

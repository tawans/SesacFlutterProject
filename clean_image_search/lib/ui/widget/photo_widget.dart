import 'package:clean_image_search/model/photo.dart';
import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({
    required this.photo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(
            photo.previewURL,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

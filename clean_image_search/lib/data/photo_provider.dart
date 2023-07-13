import 'package:flutter/material.dart';

class PhotoProvider extends InheritedWidget {
  const PhotoProvider({
    Key? key,
    required this.photo,
    required Widget child,
  }) : super(key: key, child: child);

  final String photo;

  static PhotoProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return photo != oldWidget.photo;
  }
}

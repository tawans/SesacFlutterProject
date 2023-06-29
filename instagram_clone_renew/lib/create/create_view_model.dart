import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../domain/post.dart';

class CreateViewModel {
  final _picker = ImagePicker();

  ImagePicker get picker => _picker;

  final _titleTextController = TextEditingController();

  TextEditingController get titleTextController => _titleTextController;

  File? _image;

  File? get image => _image;

  set image(File? image) => _image = image;

  bool _isLoading = false;

  set isLoading(bool isLoading) => _isLoading = isLoading;

  bool get isLoading => _isLoading;

  Future<void> newPost() async {
    if (_image != null && _titleTextController.text.isNotEmpty) {
      _isLoading = true;

      await uploadPost(
        _titleTextController.text,
        _image!,
      );

      _isLoading = false;
    }
  }

  Future<File?> getImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      return null;
    }

    return File(image.path);
  }

  Future<void> uploadPost(String title, File imageFile) async {
    //이미지 업로드
    final storageRef = FirebaseStorage.instance.ref();
    final imageRef = storageRef
        .child('postImages/${DateTime.now().millisecondsSinceEpoch}.png');

    //이미지 url을 얻고

    await imageRef.putFile(imageFile);

    final downlaodUrl = await imageRef.getDownloadURL();

    //게시물 업로드
    final postRef =
        FirebaseFirestore.instance.collection('posts').withConverter<Post>(
              fromFirestore: (snapshot, _) => Post.fromJson(snapshot.data()!),
              toFirestore: (post, _) => post.toJson(),
            );

    final newPostRef = postRef.doc();

    postRef.add(Post(
      id: newPostRef.id,
      userId: FirebaseAuth.instance.currentUser?.uid ?? '',
      title: title,
      imageUrl: downlaodUrl,
    ));
  }

  Image getImageFile() {
    return Image.file(
      _image!,
      width: 300,
    );
  }
}

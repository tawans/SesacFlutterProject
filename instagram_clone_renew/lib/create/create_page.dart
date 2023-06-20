import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone_renew/create/create_model.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final model = CreateModel();

  final _titleTextController = TextEditingController();

  File? _image;

  bool isLoading = false;

  @override
  void dispose() {
    _titleTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
            onPressed: () async {
              if (_image != null && _titleTextController.text.isNotEmpty) {
                setState(() {
                  isLoading = true;
                });

                await model.uploadPost(
                  _titleTextController.text,
                  _image!,
                );

                setState(() {
                  isLoading = false;
                });

                if (mounted) {
                  Navigator.pop(context);
                }
              }
            },
            icon: const Icon(Icons.send),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _titleTextController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 3, color: Colors.lightBlueAccent),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (isLoading) const CircularProgressIndicator(),
              ElevatedButton(
                onPressed: () async {
                  _image = await model.getImage();

                  setState(() {});
                },
                child: const Text('이미지 선택'),
              ),
              if (_image != null)
                Image.file(
                  _image!,
                  width: 300,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

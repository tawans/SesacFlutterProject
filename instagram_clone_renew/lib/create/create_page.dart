import 'package:flutter/material.dart';
import 'package:instagram_clone_renew/create/create_view_model.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final viewModel = CreateViewModel();

  @override
  void dispose() {
    viewModel.titleTextController.dispose();
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
              if (viewModel.image != null &&
                  viewModel.titleTextController.text.isNotEmpty) {
                setState(() {
                  viewModel.isLoading = true;
                });

                await viewModel.uploadPost(
                  viewModel.titleTextController.text,
                  viewModel.image!,
                );

                setState(() {
                  viewModel.isLoading = false;
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
                controller: viewModel.titleTextController,
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
              if (viewModel.isLoading) const CircularProgressIndicator(),
              ElevatedButton(
                onPressed: () async {
                  viewModel.image = await viewModel.getImage();

                  setState(() {});
                },
                child: const Text('이미지 선택'),
              ),
              if (viewModel.image != null) viewModel.getImageFile()
            ],
          ),
        ),
      ),
    );
  }
}

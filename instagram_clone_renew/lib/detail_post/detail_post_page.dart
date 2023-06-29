import 'package:flutter/material.dart';
import 'package:instagram_clone_renew/detail_post/detail_post_view_model.dart';
import 'package:instagram_clone_renew/domain/post.dart';

class DetailPostPage extends StatefulWidget {
  const DetailPostPage({super.key, required Post post});

  @override
  State<DetailPostPage> createState() => _DetailPostPageState();
}

class _DetailPostPageState extends State<DetailPostPage> {
  final viewModel = DetailViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('둘러보기'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: viewModel.getPhotoImageUrl(),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      viewModel.getEmail(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(viewModel.getNickName()),
                  ],
                )
              ],
            ),
          ),
          Hero(
            tag: viewModel.getPostId(),
            child: viewModel.getPostImageUrl(),
          ),
          Text(viewModel.getPostTitle()),
        ],
      ),
    );
  }
}

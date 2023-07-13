import 'package:clean_image_search/data/api.dart';
import 'package:clean_image_search/model/photo.dart';
import 'package:clean_image_search/ui/widget/photo_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Photo> _photos = [];
  final PixarbayApi _api = PixarbayApi();

  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          '이미지 검색 앱',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16.0,
              ),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () async {
                      final photos = await _api.fetch(_controller.text);
                      setState(() {
                        _photos = photos;
                      });
                    },
                    icon: const Icon(Icons.search),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  hintText: '검색어를 입력하세요',
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: _photos.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    final photo = _photos[index];
                    return PhotoWidget(
                      photo: photo,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pixarbay_api/image_api.dart';
import 'package:pixarbay_api/model/hits.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final api = ImageApi();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  void _onSearchSubmitted() {
    _searchQuery = _searchController.text;
    _loadImages();
  }

  Future<void> _loadImages() async {
    try {
      setState(() {});
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    super.initState();

    //
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PixarBay API')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: _onSearchSubmitted,
                    child: const Icon(
                      color: (Colors.greenAccent),
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Hits>>(
              future: api.getImages(_searchQuery),
              initialData: const [],
              builder:
                  (BuildContext context, AsyncSnapshot<List<Hits>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (!snapshot.hasData) {
                  return const Text('NO Data');
                }

                final images = snapshot.data!;

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    final imageUrl = images[index].webformatURL;
                    return GestureDetector(
                      onTap: () {
                        context.push(Uri(path: '/detail', queryParameters: {
                          'imageUrl': imageUrl,
                        }).toString());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Hero(
                          tag: imageUrl,
                          child: Container(
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(imageUrl),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

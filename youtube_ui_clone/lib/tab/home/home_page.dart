import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      '전체',
      '게임',
      '뉴스',
      '실시간',
      '믹스',
      '새로운 맞춤 동영상',
      '스포츠'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              'assets/images/youtube_logo.png',
              width: 100,
            ),
            const SizedBox(width: 140),
            Image.asset(
              'assets/images/cast.png',
              width: 25,
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/images/notification.png',
              width: 25,
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/images/search.png',
              width: 25,
            ),
            const SizedBox(width: 10),
            const CircleAvatar(
              radius: 14,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip(
                    label: Text(categories[index]),
                    selected: index == 0,
                    onSelected: (selected) {},
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(5.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/video_3.png',
                        fit: BoxFit.cover,
                        height: 220,
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(top: 220),
                        leading: ClipOval(
                          child: Image.asset(
                            'assets/images/jjang.jpg',
                            fit: BoxFit.cover,
                            width: 50,
                          ),
                        ),
                        title: Text(
                          '돌아온 씨야 ${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        subtitle: const Text(
                          '기묘한 캐릭터ㆍ조회수 4만회ㆍ9시간 전',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                        trailing: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

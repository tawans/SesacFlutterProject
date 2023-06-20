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
      body: ListView.builder(
        itemCount: 3, // 예시로 10개의 아이템을 표시
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/video_3.png', // 이미지 경로
                  fit: BoxFit.cover,
                  height: 220,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(top: 220),
                  leading: ClipOval(
                    child: Image.asset(
                      // fit: BoxFit.cover,
                      'assets/images/jjang.jpg',
                      fit: BoxFit.cover,
                      width: 50,
                    ),
                  ),
                  // leading: const CircleAvatar(
                  //   backgroundImage:
                  //       AssetImage('assets/images/character.png'), // 아바타 이미지
                  // ),
                  title: Text('돌아온 씨야 ${index + 1}',
                      style: const TextStyle(fontSize: 15)), // 아이템의 제목
                  subtitle: const Text('기묘한 캐릭터ㆍ조회수 4만회ㆍ9시간 전',
                      style: TextStyle(fontSize: 11)), // 아이템의 부제목
                  trailing: const Icon(Icons.more_vert), // 아이템 우측에 표시될 아이콘
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

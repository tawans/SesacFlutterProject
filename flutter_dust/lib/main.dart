import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('현재 위치 미세먼지', style: TextStyle(fontSize: 30)),
              const SizedBox(
                height: 16,
              ),
              Card(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.yellow,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('얼굴사진'),
                          Text(
                            '80',
                            style: TextStyle(fontSize: 40),
                          ),
                          Text('보통'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text('이미지'),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                '11º',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Text(
                            '습도 100%',
                            //                    style: TextStyle(fontSize: 40),
                          ),
                          Text('풍속 5.7m/s'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: const Icon(Icons.refresh),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

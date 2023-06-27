import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('')),
        body: Container(
          width: 428,
          height: 926,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 30,
                top: 106,
                child: Container(
                  width: 368,
                  height: 789,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 200,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 400,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 600,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 800,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 202,
                        top: 0,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 202,
                        top: 200,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 202,
                        top: 400,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 202,
                        top: 600,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 202,
                        top: 800,
                        child: Container(
                          width: 166,
                          height: 166,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/166x166"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 33,
                child: Container(
                  width: 368,
                  height: 49,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFF4FB6B2)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 43,
                top: 44,
                child: SizedBox(
                  width: 138,
                  height: 37,
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Color(0xFFD9D9D9),
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 361,
                top: 45,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration:
                              const BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

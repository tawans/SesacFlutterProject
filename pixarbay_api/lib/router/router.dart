import 'package:go_router/go_router.dart';
import 'package:pixarbay_api/detail_screen.dart';
import 'package:pixarbay_api/main_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailScreen(),
    ),
  ],
);

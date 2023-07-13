import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:subway_clean/data/repository/subway_station_repository_impl.dart';
import 'package:subway_clean/domain/use_case/get_station_use_case.dart';
import 'package:subway_clean/presentation/main_screen.dart';
import 'package:subway_clean/presentation/main_view_model.dart';

final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(GetStationsUseCase(
            SubwayStationRepositoryImpl(),
          )),
          child: const MainScreen(),
        );
      },
    ),
  ],
);

import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/clean_up/presentation/views/cleanup_view.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kCleanUp = '/cleanUp';

  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const CleanUpView(); //const HomeView();
      },
    ),
    GoRoute(
      path: kCleanUp,
      builder: (context, state) {
        return const CleanUpView();
      },
    ),
  ]);
}

import 'package:bookly/Features/Home/peresentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

class AppRoutes {
  static const String splash = '/Splash';
  static const String home = '/homeview';
}

abstract class AppRouter {
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}

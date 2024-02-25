import 'package:bookly/Features/Home/peresentation/views/book_details_view.dart';
import 'package:bookly/Features/Home/peresentation/views/home_view.dart';
import 'package:bookly/Features/Search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

class AppRoutes {
  static const String splash = '/';
  static const String homeView = '/homeview';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';
}

abstract class AppRouter {
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRoutes.bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: AppRoutes.searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetail = '/bookDetail';
  static const kFirstApp = '/';

  
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kFirstApp, // indicate the first screen in my app
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetail,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}

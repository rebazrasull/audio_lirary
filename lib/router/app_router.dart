import 'package:audio_library/router/route_names.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RouteNames.home,
  routes: [
    GoRoute(
      path: RouteNames.home,
      name: 'home',
    //  builder: (context, state) => const HomeScreen(),
    ),
      GoRoute(
      path: RouteNames.home,
      name: 'home',
    //  builder: (context, state) => const HomeScreen(),
    ),
  ],
);
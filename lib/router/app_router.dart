import 'package:audio_library/IntroPage/intro_page.dart';
import 'package:audio_library/login/login_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:audio_library/router/route_names.dart';
final GoRouter appRouter = GoRouter(
  initialLocation: RouteNames.intro,
  routes: [
    GoRoute(
      path: RouteNames.intro,
      name: 'intro',
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
      path: RouteNames.login,
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
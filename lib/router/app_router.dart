import 'package:audio_library/bottomnavbar/page/bottom_nav_bar.dart';
import 'package:audio_library/config/cusom_image_and_icon/IntroPage/intro_page.dart';
import 'package:audio_library/features/login/screen/login_screen.dart';
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
     GoRoute(
      path: RouteNames.bottomv,
      name: 'bottomv',
      builder: (context, state) => const BottomNavBar() ,
    ),
    //   GoRoute(
    //   path: RouteNames.bottomv,
    //   name: 'bottomv',
    //   builder: (context, state) => const BottomNavBar() ,
    // ),
  ],
);
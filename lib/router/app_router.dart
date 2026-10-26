import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:audio_library/router/route_names.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RouteNames.home,

  routes: [
    GoRoute(
      path: RouteNames.home,
      name: 'home',
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Home Screen',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        );
      },
    ),
  ],
);

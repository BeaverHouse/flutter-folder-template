import 'package:beaver_dev/ui/button/button_screen.dart';
import 'package:beaver_dev/ui/home/home_screen.dart';
import 'package:beaver_dev/ui/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String home = '/';
  static const String login = 'login';
  static const String button = 'button';

  static final GoRouter routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: login,
            builder: (BuildContext context, GoRouterState state) {
              return const LoginScreen();
            },
          ),
          GoRoute(
            path: button,
            builder: (BuildContext context, GoRouterState state) {
              return const ButtonScreen();
            },
          ),
        ],
      ),
    ],
  );
}

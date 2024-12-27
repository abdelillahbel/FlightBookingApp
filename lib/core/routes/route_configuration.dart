import 'package:flightbookapp/presentation/home/home_screen.dart';
import 'package:flightbookapp/presentation/main/main_screen.dart';
import 'package:flightbookapp/presentation/profile/profile_screen.dart';
import 'package:flightbookapp/presentation/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _selectionNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

class CustomShellBranch extends StatefulShellBranch {
  final Map<String, dynamic> routeExtras;

  CustomShellBranch({
    required super.routes,
    required this.routeExtras,
    super.navigatorKey,
    super.initialLocation,
    super.observers,
    super.preload,
    super.restorationScopeId,
  });
}

class RouteConfiguration {
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/home',
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainScreen(navigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          CustomShellBranch(
            routeExtras: const <String, dynamic>{
              'label': 'Home',
              'icon': Icons.home,
            },
            navigatorKey: _selectionNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: '/home',
                name: 'home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          CustomShellBranch(
            routeExtras: const <String, dynamic>{
              'label': 'Search',
              'icon': Icons.search
            },
            routes: <RouteBase>[
              GoRoute(
                path: '/search',
                name: 'search',
                builder: (context, state) => const SearchScreen(),
              ),
            ],
          ),
          CustomShellBranch(
            routeExtras: const <String, dynamic>{
              'label': 'Profile',
              'icon': Icons.person
            },
            routes: <RouteBase>[
              GoRoute(
                path: '/profile',
                name: 'profile',
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          )
        ],
      ),
    ],
  );
}

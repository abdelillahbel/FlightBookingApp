import 'package:flightbookapp/core/routes/route_configuration.dart';
import 'package:flightbookapp/presentation/main/bloc/main_screen_cubit.dart';
import 'package:flightbookapp/presentation/main/bloc/main_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => navigationShell.goBranch(index),
        items: navigationShell.route.branches
            .cast<CustomShellBranch>()
            .map(
              (branch) => BottomNavigationBarItem(
                icon: Icon(branch.routeExtras['icon'] as IconData),
                label: branch.routeExtras['label'],
              ),
            )
            .toList(),
        currentIndex: navigationShell.currentIndex,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_cask/collection/data/models/bottle.dart';
import 'package:one_cask/collection/screens/bottle_detail.dart';
import 'package:one_cask/collection/screens/my_collection.dart';
import 'package:one_cask/core/screens/sign_in_screen.dart';
import 'package:one_cask/core/screens/welcome_screen.dart';

import '../gen/assets.gen.dart';

enum Routes {
  Welcome('/'),
  SignIn('/sign-in'),
  MyCollection('/my-collection'),
  BottleDetail('/bottle-detail/:id');

  final String path;

  String withId(String id) => path.replaceFirst(':id', id);

  const Routes(this.path);
}

final router = GoRouter(
  initialLocation: Routes.Welcome.path,
  routes: [
    GoRoute(
      path: Routes.Welcome.path,
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: Routes.SignIn.path,
      builder: (context, state) => const SignInScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) => Scaffold(
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Assets.img.icons.scan.image(width: 24.0),
              activeIcon: Assets.img.icons.scan.image(width: 24.0),
              label: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: Assets.img.icons.collection.image(width: 24.0),
              label: 'Collection',
            ),
            BottomNavigationBarItem(
              icon: Assets.img.icons.bottle.image(width: 24.0),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Assets.img.icons.settings.image(width: 24.0),
              label: 'Settings',
            ),
          ],
        ),
      ),
      routes: [
        GoRoute(
          path: Routes.MyCollection.path,
          builder: (context, state) => const MyCollectionTabScreen(),
        ),
      ],
    ),
    GoRoute(
      path: Routes.BottleDetail.path,
      builder: (context, state) {
        final id = state.pathParameters['id'];
        final Bottle extra = GoRouterState.of(context).extra! as Bottle;
        return BottleDetailScreen(id: id!, data: extra);
      },
    ),
  ],
);

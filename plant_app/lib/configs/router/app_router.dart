import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_app/presentation/animations/animation_example.dart';
import 'package:plant_app/presentation/animations/animation_page.dart';
import 'package:plant_app/presentation/cart_page.dart';
import 'package:plant_app/presentation/page2.dart';
import 'package:plant_app/presentation/valorant/v_account_page.dart';

class AppRouter {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const VAccountPage(),
        routes: const [
          // GoRoute(
          //     path: 'productDetail',
          //     builder: (context, state) => const ProductDetailPage(),
          //     routes: [
          //       _cart(),
          //     ]),
        ],
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/animation',
        builder: (context, state) => const MyAnimationPage(),
      ),
      GoRoute(
        path: '/animationExample',
        builder: (context, state) => const AnimationExample(),
      ),
    ],
  );

  static GoRoute _cart() {
    return GoRoute(
        path: 'cart',
        builder: (context, state) {
          final extras = state.extra as Map<String, dynamic>;
          int noOfItems = extras['noOfItems'];
          return CartPage(
            noOfItems: noOfItems,
          );
        });
  }
}

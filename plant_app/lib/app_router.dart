import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_app/cart_page.dart';
import 'package:plant_app/page1.dart';
import 'package:plant_app/page2.dart';

class AppRouter {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
              path: 'productDetail',
              builder: (context, state) => const ProductDetailPage(),
              routes: [
                _cart(),
              ]),
        ],
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      
    ],
  );

 static  GoRoute _cart (){
    return GoRoute(
        path: 'cart',
        builder: (context, state){
          final extras = state.extra as Map<String, dynamic>;
          int noOfItems = extras['noOfItems'];
          return CartPage(noOfItems: noOfItems,);
        }
      );
  }
}

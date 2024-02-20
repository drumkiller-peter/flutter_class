import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_ui/ui/modules/auth/login/login_screen.dart';
import 'package:instagram_ui/ui/modules/auth/login/repository/authentication_repository.dart';
import 'package:instagram_ui/ui/modules/auth/sign_up/bottom_nav_page.dart';
import 'package:instagram_ui/ui/modules/bible/bible.dart';
import 'package:instagram_ui/ui/modules/dashboard/dashboard.dart';
import 'package:instagram_ui/ui/modules/dummy/dummy1.dart';
import 'package:instagram_ui/ui/modules/dummy/dummy2.dart';
import 'package:instagram_ui/ui/modules/notification/notification_page.dart';
import 'package:instagram_ui/ui/modules/profile/profile_screen.dart';
import 'package:instagram_ui/ui/modules/search/search_page.dart';
import 'package:instagram_ui/ui/modules/splas/splash_screen.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> bottomNavKey = GlobalKey<NavigatorState>();

  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String profile = '/profile';

  static const String notification = '/notification';
  static const String search = '/search';
  static const String bible = '/bible';
  static const String dashboard = '/dashboard';
  static const String dummy1 = 'dummy1';
  static const String dummy2 = 'dummy2';

  static GoRouter router = GoRouter(
    initialLocation: AppRouter.dashboard,
    // debugLogDiagnostics: true,
    errorBuilder: (context, state) {
      return Scaffold(
        body: Center(
          child: Text(
            "An error occurred. Error code: ${state.error}",
          ),
        ),
      );
    },
    redirect: (context, state) {
      // var userInfo = context.read<AuthenticationRepository>().getUserInfo();
      log("ERROr${state.error}");
      log("Full PAth${state.fullPath}");

      log("Name:${state.name}");
      log("Matched Location${state.matchedLocation}");

      // // log("${userInfo.email}Email is");

      // if (userInfo.email.isNotEmpty) {
      //   return state.name;
      // } else {
      //   return login;
      // }

      return null;
    },
    navigatorKey: navigatorKey,
    routes: <RouteBase>[
      GoRoute(
          path: splash,
          builder: (context, state) {
            return const SplashScreen();
          }),
      GoRoute(
          path: login,
          builder: (context, state) {
            return const LoginScreen();
          }),
      StatefulShellRoute.indexedStack(
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: dashboard,
                  pageBuilder: (context, state) => NoTransitionPage(
                        child: DashboardPage(
                          key: state.pageKey,
                        ),
                      ),
                  routes: [
                    GoRoute(
                        path: dummy1,
                        builder: (context, state) {
                          return const Dummy1();
                        },
                        routes: [
                          GoRoute(
                            path: dummy2,
                            builder: (context, state) {
                              List data = state.extra as List;
                              return Dummy2(
                                someDummyModel: data[0] as SomeDummyModel,
                                isMale: data[1] as bool,
                              );
                            },
                          ),
                        ]),
                    GoRoute(
                      path: dummy2,
                      builder: (context, state) {
                        List data = state.extra as List;

                        return Dummy2(
                          someDummyModel: data[0] as SomeDummyModel,
                          isMale: data[1] as bool,
                        );
                      },
                    ),
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: notification,
                builder: (context, state) => const NotificationPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: bible,
                builder: (context, state) {
                  return const BiblePage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: search,
                builder: (context, state) {
                  return const SearchPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: profile,
                builder: (context, state) {
                  return const ProfileScreen();
                },
              ),
            ],
          ),
        ],
        // navigatorContainerBuilder: (context, shell, childs) {
        //   return childs[shell.currentIndex];
        // },
        builder: (context, state, shell) {
          return HomeScreen(child: shell);
        },
      ),
      GoRoute(
        path: '/dummy',
        builder: (context, state) {
          return const Scaffold(
            body: Center(
              child: Text("Dummy Screen"),
            ),
          );
        },
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_ui/ui/modules/auth/login/login_screen.dart';
import 'package:instagram_ui/ui/modules/auth/sign_up/bottom_nav_page.dart';
import 'package:instagram_ui/ui/modules/dashboard/dashboard.dart';
import 'package:instagram_ui/ui/modules/event/event_list.dart';
import 'package:instagram_ui/ui/modules/event/event_page.dart';
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
  static const String eventList = '/eventList';
  static const String dashboard = '/dashboard';


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
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: notification,
                builder: (context, state) => const EventPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: eventList,
                builder: (context, state) {
                  return const EventListPage();
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
        builder: (context, state, shell) {
          return BottomNavPage(child: shell);
        },
      ),
    ],
  );
}

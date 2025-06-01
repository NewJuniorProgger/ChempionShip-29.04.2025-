import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/screens/notification_screen.dart';
import 'package:matule/layers/presentation/screens/root_screen.dart';
import 'package:matule/layers/presentation/screens/OutDoor.dart';
import 'package:matule/layers/presentation/screens/DrawerMenu.dart';
import 'package:matule/layers/presentation/screens/notification_screen.dart';
import 'package:matule/layers/presentation/screens/OutDoor.dart';
import 'package:matule/layers/presentation/screens/CardScreen.dart';
import 'package:matule/layers/presentation/screens/search.dart';
import 'package:matule/layers/presentation/screens/Setting_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:matule/layers/presentation/screens/buildscreen.dart';
import 'package:matule/layers/presentation/screens/signinscreen.dart';
import 'package:matule/layers/presentation/shared/ui/createUser.dart';
import 'package:matule/layers/presentation/screens/FagotPasswordScreen.dart';

class RouterConfigGo {
  final GoRouter router = GoRouter(
    initialLocation: '/signin',
    routes: [
      GoRoute(path: '/signin', builder: (context, state) => SigninScreen()),
      GoRoute(
        path: '/pass',
        builder: (context, state) => ForgotPasswordsrceen(),
      ),
      GoRoute(path: '/create', builder: (context, state) => CreateUser()),
      

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ZoomDrawer(
            controller: ZoomDrawerController(),
            menuScreen: DrawerMenu(),
            mainScreen: BuildScreen(navigationShell: navigationShell),
            borderRadius: 24.0,
            showShadow: false,
            angle: -12.0,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
              GoRoute(
                path: '/outdoor',
                builder: (context, state) => Outdoor(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/notifications',
                builder: (context, state) => NotificationScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/cart',
                builder: (context, state) => CardScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/search',
                builder: (context, state) => SearchScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                builder: (context, state) => SettingScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

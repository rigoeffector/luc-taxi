import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rider/routes/routes.names.dart';
import 'package:rider/screens/auth/checking.phone.screen.dart';
import 'package:rider/screens/cart/cart.screen.dart';
import 'package:rider/screens/history/history.screen.dart';
import 'package:rider/screens/home/home.screen.dart';
import 'package:rider/screens/onboard/index.dart';
import 'package:rider/screens/otp/verify.otp.screen.dart';
import 'package:rider/screens/profile/profile.screen.dart';

class AppNavigation {
  AppNavigation._();

  static String initRoute = '/';

  static final _rootNavigatorKeys = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    initialLocation: initRoute,
    navigatorKey: _rootNavigatorKeys,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: onboard,
        builder: ((context, state) => OnBoardingScreen(
              key: state.pageKey,
            )),
      ),
      GoRoute(
        path: '/checking_phone',
        name: checking_phone,
        builder: ((context, state) => CheckingPhoneScreen(
              key: state.pageKey,
            )),
      ),
      GoRoute(
        path: '/home',
        name: home,
        builder: ((context, state) => HomeScreen(
              key: state.pageKey,
            )),
      ),
      // GoRoute(
      //   path: '/profile',
      //   name: profile,
      //   builder: ((context, state) => ProfileScreen(
      //         key: state.pageKey,
      //       )),
      // ),
      GoRoute(
        path: '/cart',
        name: cart,
        builder: ((context, state) => CartScreen(
              key: state.pageKey,
            )),
      ),
      GoRoute(
        path: '/otp',
        name: otp,
        builder: ((context, state) => VerifyOtpScreen(
              key: state.pageKey,
            )),
      ),
      GoRoute(
        path: '/history',
        name: history,
        builder: ((context, state) => HistoryScreen(
              key: state.pageKey,
            )),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  );
}

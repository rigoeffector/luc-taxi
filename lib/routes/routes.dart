import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rider/routes/routes.names.dart';
import 'package:rider/screens/auth/checking.phone.screen.dart';
import 'package:rider/screens/cart/cart.screen.dart';
import 'package:rider/screens/history/history.screen.dart';
import 'package:rider/screens/home/home.screen.dart';
import 'package:rider/screens/locations/get.location.results.dart';
import 'package:rider/screens/locations/locations.screen.dart';
import 'package:rider/screens/locations/single.result.card.dart';
import 'package:rider/screens/onboard/index.dart';
import 'package:rider/screens/otp/verify.otp.screen.dart';
import 'package:rider/screens/profile/profile.screen.dart';
import 'package:rider/screens/trip/trip.screen.dart';

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
      GoRoute(
        path: '/trip_more',
        name: trip_more,
        builder: ((context, state) => TripScreen(
              key: state.pageKey,
            )),
      ),
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
      GoRoute(
        path: '/profile',
        name: profile,
        builder: ((context, state) => ProfileScreen(
              key: state.pageKey,
            )),
      ),
      GoRoute(
        path: '/location',
        name: location,
        builder: ((context, state) => LocationsScreen(
              key: state.pageKey,
            )),
      ),
      GoRoute(
        path: '/location_results',
        name: location_results,
        builder: ((context, state) => GetLocationsResults(
              key: state.pageKey,
            )),
      ),
      GoRoute(
        path: '/single_location_result',
        name: single_location_result,
        builder: ((context, state) => SingleResultCardScreen(
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms/Screen/error_screen/error_screen.dart';
import 'package:hrms/Screen/inbox/inbox_screen.dart';
import 'package:hrms/Screen/more/more_screen.dart';
import 'package:hrms/Screen/my_list/mytask_screen.dart';
import 'package:hrms/Screen/search/search_screen.dart';
import 'package:hrms/Screen/splash_screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bottom_navigation/bottom-navigation_screen.dart';
import 'home/home_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRoute {
  static const String splashScreen = '/splashScreen';
  static const String loginScreen = '/login';
  static const String verifyOtpScreen = '/verifyOtp';
  static const String onboardScreen = '/onboardscreen';
  static const String homeScreen = '/home';
  static const String mytripScreen = '/mytrip';
  static const String profileScreen = '/profile';
  static const String moreScreen = '/more';
  static const String pickupLocationScreen = '/pickupLocation';
  static const String destinationLocationScreen = '/destinationLocation';
  static const String bookingScreen1Screen = '/bookingScreen1';
  static const String finalbookingScreen = '/finalbooking';
  // static const String signUpScreen = '/signup';
  // static const String forgotPassword = '/forgotPassword';
  // // static const String introScreen = '/intro';
  // static const String phoneVerificationScreen = '/PhoneVerification';
  // static const String newsLetter = '/newsLetter';
  // static const String homeScreen = '/home';
  // static const String homeScreen2 = '/home2';
  // static const String searchScreen = '/search';
  // static const String notificationScreen = '/notification';
  // static const String profileScreen = '/profile';
  // static const String paymentMethodScreen = '/paymentMethod';
  // static const String historyScreen = '/history';
  // static const String driverDetailScreen = '/driverDetail';
  // static const String settingsScreen = '/settings';
  // static const String reviewTripScreen = '/reviewTrip';
  // static const String cancellationReasonsScreen = '/cancellationReasons';
  // static const String termsConditionsScreen = '/termsConditions';
  // static const String chatScreen = '/chat';
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/', //comment for implemetation
    // initialLocation: '/home',
    errorBuilder: (context, state) => ErrorScreen(),
    // redirect: (BuildContext context, GoRouterState state) async {
    //   final SharedPreferences prefs = await SharedPreferences.getInstance();
    //   String? phone = await prefs.getString('phone');
    //   if (phone != null) {
    //     // return '/home';
    //     context.go('/home', extra: {'id': "0"});
    //     //return;
    //   } else {
    //     return null;
    //   }
    // },

    routes: [
      GoRoute(
        path: '/',
        name: "splashScreen",
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const SplashScreen(),
      ),
      // GoRoute(
      //   path: '/on',
      //   name: "Onboard",
      //   parentNavigatorKey: _rootNavigatorKey,
      //   builder: (context, state) => const Onboarding(),
      // ),
      // GoRoute(
      //   path: '/permission',
      //   name: "permission",
      //   parentNavigatorKey: _rootNavigatorKey,
      //   builder: (context, state) => const LocationPhone(),
      // ),
      // GoRoute(
      //   path: '/login',
      //   name: "Login",
      //   parentNavigatorKey: _rootNavigatorKey,
      //   builder: (context, state) => const LognScreen(),
      // ),
      // GoRoute(
      //     path: '/otpVerify',
      //     name: "verifyOtp",
      //     parentNavigatorKey: _rootNavigatorKey,
      //     builder: (context, state) {
      //       Map<String, dynamic>? parameter =
      //           state.extra as Map<String, dynamic>?;
      //       return OtpVerify();
      //     }), //
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          Map<String, dynamic>? parameter =
              state.extra as Map<String, dynamic>?;
          // print(parameter!['id']);
          // int index = 0;
          return BottomNavigation(
            child: child,
            // index: 0,
            index: int.parse(parameter!['id'] ??
                "0"), //parameter!['id'] ??  comment for implement
          );
        },
        routes: [
          GoRoute(
            path: '/home',
            name: "Home",
            // parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const HomeScreen(),
            // routes: [
            //   //LiftRequestSuccessScreen
            //   GoRoute(
            //     path: 'myList',
            //     name: "myList",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) =>MylistScreen(),
            //   ),
            //   GoRoute(
            //     path: 'sucessRide',
            //     name: "sucessRide",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => SuccessfulScreen(),
            //   ),
            //   GoRoute(
            //     path: 'reviewride',
            //     name: "reviewride",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => ReviewBooking(),
            //   ),

            //   GoRoute(
            //     path: 'rideCancel',
            //     name: "rideCancel",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => CancellationReasonsScreen(),
            //   ),
            //   GoRoute(
            //     path: 'driverchat',
            //     name: "chatDriver",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => ChatScreen(),
            //   ),
            //   GoRoute(
            //     path: 'pickup',
            //     name: "Pickup",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => const PickUpLocation(),
            //   ),
            //   GoRoute(
            //     path: 'dest',
            //     name: "Destination",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => const DestinationLocation(),
            //   ),
            //   GoRoute(
            //     path: 'bookingsr1',
            //     name: "BookingScreen1",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => const BookingScreenfirst(),
            //   ), //DriverFindScreen() ConfrmRideBooking
            //   //  GoRoute(
            //   //   path: 'searchDriver',
            //   //   name: "searchDriver",
            //   //   parentNavigatorKey: _shellNavigatorKey,
            //   //   builder: (context, state) => const searchDriver(),
            //   // ),

            //   GoRoute(
            //       path: 'driverfindscr',
            //       name: "driverfindScr",
            //       parentNavigatorKey: _shellNavigatorKey,
            //       builder: (context, state) {
            //         Map<String, dynamic>? parameter =
            //             state.extra as Map<String, dynamic>?;
            //         return DriverFindScreen(
            //           bookingId: parameter!['bookingID'],
            //         );
            //       }), //DriverFindScreen() ConfrmRideBooking
            //   GoRoute(
            //     path: 'conformBooking',
            //     name: "conformBooking",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => const ConfrmRideBooking(),
            //   ), //LiftDriverList
            //   GoRoute(
            //     path: 'liftbook',
            //     name: "liftbook",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => const LiftDriverList(),
            //   ), //LiftBookingSelectVechicle
            //   GoRoute(
            //     path: 'liftVechSelect',
            //     name: "liftVechSelect",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => const LiftBookingSelectVechicle(),
            //   ), //LiftDriverShow
            //   GoRoute(
            //     path: 'liftDriverShow',
            //     name: "liftDriverShow",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => const LiftDriverShow(),
            //   ), //ThankyouScreen
            //   GoRoute(
            //     path: 'thankyouScreen',
            //     name: "thankyouScreen",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) => const ThankyouScreen(),
            //   ), //
            // ],
          ),
          GoRoute(
            path: '/mylist',
            name: "MyList",
            // parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const MylistScreen(),
            // routes: [
            //   GoRoute(
            //     path: 'fullDtlsTrip',
            //     name: "FullDtlsTrip",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) {
            //       Map<String, dynamic>? parameter =
            //           state.extra as Map<String, dynamic>?;
            //       return FullDetaisTrip(
            //         details: parameter!['details'],
            //       );
            //     },
            //   ), //LiftbookingDetail
            //   GoRoute(
            //     path: 'fullDtlsTriplift',
            //     name: "FullDtlsTriplift",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) {
            //       Map<String, dynamic>? parameter =
            //           state.extra as Map<String, dynamic>?;
            //       return FullDetaisTripLift(
            //         details: parameter!['details'],
            //       );
            //     },
            //   ), //
            // ]
          ),
          GoRoute(
            path: '/inbox',
            name: "Inbox",
            // parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const InboxScreen(),
            // routes: [
            //   GoRoute(
            //     path: 'web',
            //     name: "web",
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (context, state) {
            //       Map<String, dynamic>? parameter =
            //           state.extra as Map<String, dynamic>?;
            //       return ShowWeb(
            //         urll: parameter!['url'],
            //       );
            //     },
            //   ),
            // ]
          ),
          GoRoute(
            path: '/search',
            name: "Search",
            // parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => SearchScreen(),
          ),
          GoRoute(
            path: '/more',
            name: "More",
            // parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const MoreScreen(),
          ),
        ],
      )
    ],
  );
}

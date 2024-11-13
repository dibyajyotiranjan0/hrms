import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final VoidCallback onUnmounted;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    // Future.delayed(Duration(seconds: 1), () {
    //   context.pushReplacement('/on');
    // });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initFunction();
    });
  }

  initFunction() async {
    Timer(Duration(seconds: 3), () async {
      context.pushReplacement('/home', extra: {'id': "0"});
      // final SharedPreferences prefs = await SharedPreferences.getInstance();
      // String? phone = await prefs.getString('phone');
      // bool? onScreen = await prefs.getBool('onScreen');
      // String? permission = prefs.getString("locEnDs");
      // if (phone != null) {
      //   context.pushReplacement('/home', extra: {'id': "0"});

      // } else {
      //   // context.pushReplacement('/login');
      //   if (permission != null) {
      //     if (onScreen == true) {
      //       context.pushReplacement('/login');
      //     } else
      //       context.pushReplacement('/on');
      //   } else
      //     context.pushReplacement('/permission');
      // }
    });

    // context.pushReplacement('/home', extra: {'id': "0"});

    // Navigator.of(context).pushNamedAndRemoveUntil(
    //     AppRoute.onboardScreen, (Route<dynamic> route) => false);\
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Onboarding()));
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/logo/feranta_new_logo.png")),
      ),
    );
  }
}

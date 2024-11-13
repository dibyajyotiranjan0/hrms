import 'package:flutter/material.dart';
import 'package:hrms/Screen/app_router.dart';
import 'package:hrms/static/themedata_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'HRMS',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
      // onGenerateRoute: AppRoute.generateRoute,
      theme: CustomTheme().themedata,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

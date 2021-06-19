import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      // home: HomePage(),
      // routes: {
      //   '/': (_) => HomePage(),
      //   MyRoutes.homeRoute: (_) => HomePage(),
      //   MyRoutes.aboutRoute: (_) => AboutPage(),
      //   MyRoutes.contactRoute: (_) => HomePage(),
      // },

      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        '/': (_, __) => MaterialPage(child: AboutPage()),
        MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
        MyRoutes.aboutRoute: (_, __) => const MaterialPage(child: AboutPage()),
        MyRoutes.contactRoute: (_, __) => MaterialPage(child: HomePage()),
      }),
    );
  }
}

class MyRoutes {
  static String homeRoute = '/home';
  static String aboutRoute = '/about';
  static String contactRoute = '/contact';
  static String projectRoute = '/project';
  static String detailRoute = '/detail';
}

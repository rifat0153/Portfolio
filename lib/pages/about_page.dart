import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/landing_page.dart';
import 'package:portfolio/widgets/navbar_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(195, 20, 50, 1.0),
              Color.fromRGBO(36, 11, 54, 1.0),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Navbar(),
            Text('About Me'),
            // LandingPage(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

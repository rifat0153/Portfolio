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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Container(
                color: Colors.white.withOpacity(0.05),
                child: EducationWidget(),
              ),
            ),
            // LandingPage(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class EducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      child: Column(
        children: [
          Text(
            'Education',
            style: largeWhiteBoldFont.copyWith(fontSize: 40),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    const WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    TextSpan(
                        text: ' North South University',
                        style: largeWhiteBoldFont),
                    TextSpan(
                        text: '\nBSc, Computer Science', style: largeWhiteFont),
                  ],
                ),
              ),
              Text(
                '2016/2020',
                // textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: largeWhiteFont,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

var largeWhiteBoldFont = const TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
var largeWhiteFont = const TextStyle(
  color: Colors.white,
  fontSize: 20,
);

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Navbar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Container(
                color: Colors.white.withOpacity(0.3),
                child: EducationWidget(),
              ),
            ),
            // LandingPage(),
            // Spacer(),
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
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Education',
            style: largeWhiteBoldFont.copyWith(fontSize: 40),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
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
          Container(
            height: 80,
            // width: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('ML',
                          style: largeWhiteBoldFont.copyWith(
                              fontSize: 40, color: Colors.amber)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('CSS',
                          style: largeWhiteBoldFont.copyWith(
                              fontSize: 40, color: Colors.amber)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('AI',
                          style: largeWhiteBoldFont.copyWith(
                              fontSize: 40, color: Colors.amber)),
                    ),
                  ),
                ),
              ],
            ),
          )
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

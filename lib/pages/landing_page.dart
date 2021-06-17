import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) return DesktopLanding();

        return MobileLanding();
      },
    );
  }
}

List<Widget> pageChildren = [
  Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Mobile Application\nDevelopers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.white,
          ),
        ),
        const Text(
          'Always Looking for the next challenge',
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    ),
  ),
  Expanded(
    child: Container(
      child: Image.asset(
        'assets/images/lp_image.png',
        fit: BoxFit.fill,
      ),
    ),
  )
];

class DesktopLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: pageChildren,
      ),
    );
  }
}

class MobileLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: pageChildren,
    );
  }
}

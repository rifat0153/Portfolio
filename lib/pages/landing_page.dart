import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) return DesktopLanding(constraints);

        return MobileLanding(constraints);
      },
    );
  }
}

List<Widget> pageChildren(double width) => [
      Container(
        width: width - 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Flutter\nDeveloper',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            const Text(
              'Always Looking for the next challenge to take on.',
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      // Container(
      //   width: width,
      //   child: Image.asset(
      //     'assets/images/lp_image.png',
      //     fit: BoxFit.fill,
      //   ),
      // )
      Container(
        width: width,
        child: Row(
          children: [
            Expanded(
                child: Image.asset(
              'images/android_ios.png',
              fit: BoxFit.cover,
            )),
            Expanded(
              child: Image.asset('images/web1.png'),
            ),
          ],
        ),
      )
    ];

class DesktopLanding extends StatelessWidget {
  DesktopLanding(this.constraints);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: pageChildren(constraints.biggest.width / 2),
      ),
    );
  }
}

class MobileLanding extends StatelessWidget {
  MobileLanding(this.constraints);
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: pageChildren(constraints.biggest.width),
    );
  }
}

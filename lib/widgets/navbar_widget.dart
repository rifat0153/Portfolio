import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:velocity_x/velocity_x.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth >= 800 &&
            constraints.maxWidth <= 1200) {
          return DesktopNavbar();
        }
        return MobileNavbar();
      },
    );
  }
}

class DesktopNavbar extends StatefulWidget {
  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  double homeSize = 15;
  double aboutSize = 15;
  double contactSize = 15;
  double buttonSize = 15;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Mahubur Rahman',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Get.to(() => HomePage());
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    context.vxNav.push(Uri.parse(MyRoutes.homeRoute));
                  },
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        homeSize = 20;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        homeSize = 15;
                      });
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: homeSize,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // Get.to(() => HomePage());
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    context.vxNav.push(Uri.parse(MyRoutes.aboutRoute));
                  },
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        aboutSize = 20;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        aboutSize = 15;
                      });
                    },
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: aboutSize,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // Get.to(() => HomePage());
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    context.vxNav.push(Uri.parse(MyRoutes.aboutRoute));
                  },
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        contactSize = 20;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        contactSize = 15;
                      });
                    },
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: contactSize,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      buttonSize = 20;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      buttonSize = 15;
                    });
                  },
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: Colors.pink,
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: buttonSize,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            const Text(
              'Mahubur Rahman',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'About Me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

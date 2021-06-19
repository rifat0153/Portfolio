import 'package:beamer/beamer.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/home_page.dart';

class MyLocations extends BeamLocation {
  MyLocations(BeamState state) : super(state);

  @override
  List<String> get pathBlueprints => ['/home'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: const ValueKey('home'),
          child: HomePage(),
        ),
        if (state.uri.pathSegments.contains('about'))
          BeamPage(
            key: const ValueKey('about'),
            child: AboutPage(),
          ),
        if (state.uri.pathSegments.contains('contact'))
          BeamPage(
            key: const ValueKey('contact'),
            child: AboutPage(),
          ),
        // if (state.pathParameters.containsKey('bookId'))
        //   BeamPage(
        //     key: ValueKey('book-${state.pathParameters['bookId']}'),
        //     child: BookDetailsScreen(
        //       books.firstWhere(
        //           (book) => book['id'] == state.pathParameters['bookId']!),
        //     ),
        //   ),
      ];
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:modular_routes/app/modules/route_one/route_two/route_two_page.dart';

main() {
  testWidgets('RouteTwoPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(RouteTwoPage(title: 'RouteTwo')));
    final titleFinder = find.text('RouteTwo');
    expect(titleFinder, findsOneWidget);
  });
}

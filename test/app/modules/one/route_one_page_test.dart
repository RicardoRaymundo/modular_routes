import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:modular_routes/app/modules/route_one/route_one_page.dart';

main() {
  testWidgets('RouteOnePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(RouteOnePage(title: 'RouteOne')));
    final titleFinder = find.text('RouteOne');
    expect(titleFinder, findsOneWidget);
  });
}

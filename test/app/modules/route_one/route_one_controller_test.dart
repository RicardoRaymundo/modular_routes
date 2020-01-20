import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:modular_routes/app/modules/route_one/route_one_controller.dart';
import 'package:modular_routes/app/modules/route_one/route_one_module.dart';

void main() {
  initModule(RouteOneModule());
  RouteOneController routeone;

  setUp(() {
    routeone = RouteOneModule.to.get<RouteOneController>();
  });

  group('RouteOneController Test', () {
    test("First Test", () {
      expect(routeone, isInstanceOf<RouteOneController>());
    });

    test("Set Value", () {
      expect(routeone.value, equals(0));
      routeone.increment();
      expect(routeone.value, equals(1));
    });
  });
}

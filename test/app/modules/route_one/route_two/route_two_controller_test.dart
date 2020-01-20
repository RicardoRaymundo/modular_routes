import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:modular_routes/app/modules/route_one/route_two/route_two_controller.dart';
import 'package:modular_routes/app/modules/route_one/route_two/route_two_module.dart';

void main() {
  initModule(RouteTwoModule());
  RouteTwoController routetwo;

  setUp(() {
    routetwo = RouteTwoModule.to.get<RouteTwoController>();
  });

  group('RouteTwoController Test', () {
    test("First Test", () {
      expect(routetwo, isInstanceOf<RouteTwoController>());
    });

    test("Set Value", () {
      expect(routetwo.value, equals(0));
      routetwo.increment();
      expect(routetwo.value, equals(1));
    });
  });
}

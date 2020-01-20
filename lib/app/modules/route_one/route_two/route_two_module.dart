import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_routes/app/modules/route_one/route_two/route_two_controller.dart';
import 'package:modular_routes/app/modules/route_one/route_two/route_two_page.dart';

class RouteTwoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RouteTwoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => RouteTwoPage()),
        Router('/route-three', module: RouteTwoModule()),
      ];

  static Inject get to => Inject<RouteTwoModule>.of();
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_routes/app/modules/route_one/route_one_controller.dart';
import 'package:modular_routes/app/modules/route_one/route_one_page.dart';
import 'package:modular_routes/app/modules/route_one/route_two/route_two_module.dart';

class RouteOneModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RouteOneController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => RouteOnePage()),
        Router('/route-two', module: RouteTwoModule()),
      ];

  static Inject get to => Inject<RouteOneModule>.of();
}

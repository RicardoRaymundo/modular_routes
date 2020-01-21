import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_routes/app/modules/one/one_controller.dart';
import 'package:modular_routes/app/modules/one/one_page.dart';
import 'package:modular_routes/app/modules/two/two_module.dart';

class OneModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OneController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => OnePage()),
        Router('/two', module: TwoModule()),
      ];

  static Inject get to => Inject<OneModule>.of();
}

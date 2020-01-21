import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_routes/app/modules/pass_parameter/pass_parameter_controller.dart';
import 'package:modular_routes/app/modules/pass_parameter/pass_parameter_page.dart';

class PassParameterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PassParameterController()),
      ];

  @override
  List<Router> get routers => [
        Router('/:id',
            child: (_, args) => PassParameterPage(
                  id: args.params['id'],
                )),
      ];

  static Inject get to => Inject<PassParameterModule>.of();
}

import 'package:modular_routes/app/modules/main_pass_parameter/main_pass_parameter_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_routes/app/modules/main_pass_parameter/main_pass_parameter_page.dart';
import 'package:modular_routes/app/modules/pass_parameter/pass_parameter_module.dart';

class MainPassParameterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MainPassParameterController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MainPassParameterPage()),
        Router(
          '/pass-parameters',
          module: PassParameterModule(),
          transition: TransitionType.fadeIn,
        ),
      ];

  static Inject get to => Inject<MainPassParameterModule>.of();
}

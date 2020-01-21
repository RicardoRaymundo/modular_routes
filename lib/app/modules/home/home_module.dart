import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_routes/app/modules/home/home_controller.dart';
import 'package:modular_routes/app/modules/home/home_page.dart';
import 'package:modular_routes/app/modules/main_pass_parameter/main_pass_parameter_module.dart';
import 'package:modular_routes/app/modules/one/one_module.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/one', module: OneModule()),
        Router('/main-pass-parameter', module: MainPassParameterModule(), transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

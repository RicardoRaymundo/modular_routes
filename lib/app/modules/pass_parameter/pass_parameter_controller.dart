import 'package:mobx/mobx.dart';

part 'pass_parameter_controller.g.dart';

class PassParameterController = _PassParameterBase
    with _$PassParameterController;

abstract class _PassParameterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

import 'package:mobx/mobx.dart';

part 'main_pass_parameter_controller.g.dart';

class MainPassParameterController = _MainPassParameterBase
    with _$MainPassParameterController;

abstract class _MainPassParameterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  List<String> fruits = [
    'maca', 'pera', 'uva', 'abacaxi'
  ];
}

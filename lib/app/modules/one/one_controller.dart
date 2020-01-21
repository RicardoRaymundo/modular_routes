import 'package:mobx/mobx.dart';

part 'one_controller.g.dart';

class OneController = _OneBase with _$OneController;

abstract class _OneBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

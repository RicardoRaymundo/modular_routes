import 'package:mobx/mobx.dart';

part 'route_two_controller.g.dart';

class RouteTwoController = _RouteTwoBase with _$RouteTwoController;

abstract class _RouteTwoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

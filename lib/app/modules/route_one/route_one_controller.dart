import 'package:mobx/mobx.dart';

part 'route_one_controller.g.dart';

class RouteOneController = _RouteOneBase with _$RouteOneController;

abstract class _RouteOneBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

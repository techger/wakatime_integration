import 'package:mobx/mobx.dart';

part 'graphic_controller.g.dart';

class GraphicController = _GraphicBase with _$GraphicController;

abstract class _GraphicBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

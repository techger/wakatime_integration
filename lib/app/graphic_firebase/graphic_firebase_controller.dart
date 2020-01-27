import 'package:mobx/mobx.dart';

part 'graphic_firebase_controller.g.dart';

class GraphicFirebaseController = _GraphicFirebaseBase
    with _$GraphicFirebaseController;

abstract class _GraphicFirebaseBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

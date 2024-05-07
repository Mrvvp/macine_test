import 'package:get/get.dart';

class TickController extends GetxController {
  var tickStates = List.generate(8, (index) => false.obs);

  void toggleTick(int index) {
    tickStates[index].value = !tickStates[index].value;
  }
}
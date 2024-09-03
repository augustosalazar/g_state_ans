import 'package:get/get.dart';

class ColorController extends GetxController {
  var colorBlue = false.obs;

  bool get getColor => colorBlue.value;

  void changeColor() {
    colorBlue.value = colorBlue.value == false ? true : false;
  }
}

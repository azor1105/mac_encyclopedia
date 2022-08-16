import 'package:flutter/material.dart';

class MyControllers {
  static TextEditingController controllerModel = TextEditingController();
  static TextEditingController controllerCpu = TextEditingController();
  static TextEditingController controllerRam = TextEditingController();
  static TextEditingController controllerDisplay = TextEditingController();
  static TextEditingController controllerReleased = TextEditingController();
  static TextEditingController controllerPrice = TextEditingController();

  static controllerClear() {
    controllerModel.clear();
    controllerCpu.clear();
    controllerRam.clear();
    controllerReleased.clear();
    controllerDisplay.clear();
    controllerPrice.clear();
  }

  static controllerIsEmpty() {
    if (controllerModel.text == "") {
      return true;
    } else if (controllerCpu.text == "") {
      return true;
    } else if (controllerRam.text == "") {
      return true;
    } else if (controllerReleased.text == "") {
      return true;
    } else if (controllerDisplay.text == "") {
      return true;
    } else if (controllerPrice.text == "") {
      return true;
    }
    return false;
  }
}

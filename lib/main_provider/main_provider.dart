import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  TextEditingController weightController = TextEditingController();
  TextEditingController lengthController = TextEditingController();


  MainProvider() {
    weightController.text = "0";
    lengthController.text="0";
  }

  void changeIncrement() {
    int index = int.parse(weightController.text);
    index++;
    weightController.text = index.toString();
    notifyListeners();
  }
  void incrementLength() {
    int index = int.parse(lengthController.text);
    index++;
    lengthController.text = index.toString();
    notifyListeners();
  }

  void changeDecrement() {
    int index = int.parse(weightController.text);
    if (index <= 0) {
      index = 0;
      weightController.text = index.toString();
      notifyListeners();
    } else {
      index--;
      weightController.text = index.toString();
      notifyListeners();
    }
  }
  void decrementLength() {
    int index = int.parse(lengthController.text);
    if (index <= 0) {
      index = 0;
      lengthController.text = index.toString();
      notifyListeners();
    } else {
      index--;
      lengthController.text = index.toString();
      notifyListeners();
    }
  }
}
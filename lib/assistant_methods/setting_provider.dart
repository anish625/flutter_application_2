import 'package:flutter/material.dart';

class SettingProvider with ChangeNotifier {
  
  bool soundState = true;

  void changeSoundState(BuildContext context, bool value) {
    soundState = value;
    notifyListeners();
  }
}

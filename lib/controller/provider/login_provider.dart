import 'package:flutter/material.dart';
class LoginScreenProvider extends ChangeNotifier {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  bool get isButtonEnabled => _isButtonEnabled;

  void updateButtonState() {
    _isButtonEnabled = usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
    notifyListeners();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
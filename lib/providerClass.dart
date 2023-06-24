import 'package:flutter/material.dart';

class DataPage extends ChangeNotifier{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  AuthType _authType = AuthType.SignUp;
  AuthType get authType => _authType;

  setAuthType(){
    _authType = _authType == AuthType.SignUp? AuthType.SignIn :AuthType.SignUp;
    notifyListeners();
  }

}

enum AuthType{
  SignUp,
  SignIn
}
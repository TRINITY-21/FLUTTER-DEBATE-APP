import 'dart:convert';
// import 'package:debate/api/currentUserModel.dart';
import 'package:debate/api/registerModel.dart';
import 'package:debate/networkHandler/network_handler.dart';
import 'package:debate/registration/model/validationItems.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RegisterModel with ChangeNotifier {
  ValidationItem _username = ValidationItem(message: null, error: null);
  ValidationItem _email = ValidationItem(message: null, error: null);
  ValidationItem _password = ValidationItem(message: null, error: null);
  String _token;
  RegistersModel _register = RegistersModel();
  NetworkHandler networkHandler = NetworkHandler();
  FlutterSecureStorage _storage = FlutterSecureStorage();
  // CurrentUserModel currentUserModel = CurrentUserModel();

  /// getters

  ValidationItem get username => _username;
  ValidationItem get email => _email;
  ValidationItem get password => _password;

  String get token => _token;

  bool get isValid {
    if (_username.message != null &&
        _email.message != null &&
        _password.message != null) {
      return true;
    } else {
      return false;
    }
  }

  /// setters

  void changeName(String value) {
    if (value.length <= 3) {
      _username = ValidationItem(
          message: null, error: "Username must be greater than 3");
    } else {
      _username = ValidationItem(message: value, error: null);
    }
    notifyListeners();
  }

  void changeEmail(String value) {
    if (value.length <= 3) {
      _email =
          ValidationItem(message: null, error: "Email must be greater than 3");
    } else {
      _email = ValidationItem(message: value, error: null);
    }
    notifyListeners();
  }

  void changePassword(String value) {
    if (value.length <= 6) {
      _password = ValidationItem(
          message: null, error: "password must be greater than 6");
    } else {
      _password = ValidationItem(message: value, error: null);
    }
    notifyListeners();
  }

  // save input to db
  saveInfo() async {
    _register = RegistersModel(
        email: email.message,
        name: username.message,
        password: password.message);

    final res = networkHandler.post(
        '/api/users/register', json.encode(_register.toJson()));
    print(username.message);
    print(email.message);
    print(password.message);

    print(res);
  }

  login() async {
    _register =
        RegistersModel(email: email.message, password: password.message);

    final res = await networkHandler.post(
        '/api/users/login', json.encode(_register.toJson()));

    Map<String, dynamic> output = json.decode(res.body);
    if (output['loginSuccess']) {
      _token = output['user']['token'];
      await _storage.write(key: "token", value: _token);
    }

    print(_token);
    print(res);
    print(output);
    print(email.message);
    print(password.message);
  }


}

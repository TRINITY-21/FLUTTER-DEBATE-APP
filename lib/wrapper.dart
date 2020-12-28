import 'package:debate/api/registerModel.dart';
import 'package:debate/networkHandler/network_handler.dart';
import 'package:debate/onboarding/Home.dart';
import 'package:debate/home.dart';
import 'package:debate/registration/model/registerModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Wrapper extends StatefulWidget {
  Wrapper({Key key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  // get token
  RegisterModel registerModel = RegisterModel();
// RegisterModel registerModel = RegisterModel();
  // CurrentUserModel currentUserModel = CurrentUserModel();
  NetworkHandler networkHandler = NetworkHandler();
  RegistersModel registersModel = RegistersModel();
  bool isLoaded = true;

  FlutterSecureStorage storage = FlutterSecureStorage();
 void getCurrentUser() async {
    final currentUser = await networkHandler.get('/api/users/auth');

    setState(() {
      registersModel = RegistersModel.fromJson(currentUser);
      isLoaded = true;
      print("IsAuth ${registersModel.id}");
    });
  }

  // if exists
 @override
  void initState() {
    super.initState();
    getCurrentUser();
  }


  @override
  Widget build(BuildContext context) {
    // final isAuth = storage.read(key:'token');

    // final isLoggedIn = reg
    
  //  print("isAuth $isAuth");

    if (registersModel.id == null) {
      return Home();
    } else {
      return HomePage();
    }
  }
}


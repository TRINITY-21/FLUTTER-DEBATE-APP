import 'package:debate/registration/model/registerModel.dart';
import 'package:debate/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(
  
  ChangeNotifierProvider(
    create:(context)=> RegisterModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter BroilerPlate",
        home: Wrapper(),
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.red,
          accentColor: Colors.red.withOpacity(0.5),
        ),
      ),
  ));



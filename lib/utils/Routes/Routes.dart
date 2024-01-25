
import 'package:flutter/material.dart';
import 'package:mvvm/utils/Routes/Routes_Name.dart';
import 'package:mvvm/view/Home_scr.dart';
import 'package:mvvm/view/Login_scr.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name)
        {
      case RoutesName.Login:
      return MaterialPageRoute(builder: (c)=>Loginscreen());
      case RoutesName.Home:
        return MaterialPageRoute(builder: (c)=>Home_screen());
      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Center(
              child: Text('No Route int'),
            ),
          );
        });
    }
  }
}
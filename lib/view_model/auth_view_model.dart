import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/respository/auth_respository.dart';
import 'package:mvvm/utils/Routes/Routes_Name.dart';
import 'package:mvvm/utils/utils.dart';

class AuthviewModel with ChangeNotifier {
  final myrepo = AuthRepository();

  Future<dynamic> login(dynamic userdata, BuildContext context) async {
    myrepo.loginapi(userdata).then((value) {
      Navigator.pushNamed(context, RoutesName.Home);
      Utils.flushBarErrorMessage('Login Successfully', context);
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
    });
  }

  Future<dynamic> signUp(dynamic userdata, BuildContext context) async {
    myrepo.loginapi(userdata).then((value) {
      Navigator.pushNamed(context, RoutesName.Home);
      Utils.flushBarErrorMessage('Login Successfully', context);
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
    });
  }
}

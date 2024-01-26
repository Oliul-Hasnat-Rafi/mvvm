import 'package:flutter/material.dart';
import 'package:mvvm/respository/auth_respository.dart';

class AuthviewModel with ChangeNotifier {
  final myrepo = AuthRepository();

  Future<dynamic> login(dynamic userdata) async {
    myrepo.loginapi(userdata);
  }
}

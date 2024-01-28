import 'package:mvvm/data/Appexception.dart';
import 'package:mvvm/data/Network/Networkapiservice.dart';
import 'package:mvvm/data/Network/baseapiservice.dart';
import 'package:mvvm/res/app_url.dart';

class AuthRepository {
  Baseapiservice _apiservice = NetwrokAApiService();

  Future<dynamic> loginapi(dynamic data) async {
    try {
      dynamic responce = _apiservice.postapidata(AppUrl.loginEndPint, data);
      return responce;
    } catch (e) {
      FetchDataException(e.toString());
    }
  }

  Future<dynamic> regapi(dynamic data) async {
    try {
      dynamic responce = _apiservice.postapidata(AppUrl.loginEndPint, data);
      return responce;
    } catch (e) {
      FetchDataException(e.toString());
    }
  }
}

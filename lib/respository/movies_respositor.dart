import 'package:mvvm/data/Appexception.dart';
import 'package:mvvm/data/Network/Networkapiservice.dart';
import 'package:mvvm/data/Network/baseapiservice.dart';
import 'package:mvvm/model/movies_model.dart';
import 'package:mvvm/res/app_url.dart';

class Moviesrespositoy {
  Baseapiservice _apiservice = NetwrokAApiService();

  Future<movies_model> getmovieslist() async {
    try {
      dynamic moviesresponse =
          await _apiservice.getapidata(AppUrl.moviesListEndPoint);
      return moviesresponse = movies_model.fromJson(moviesresponse);
    } catch (e) {
      throw e;
    }
  }
}

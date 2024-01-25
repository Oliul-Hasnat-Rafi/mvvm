import 'dart:convert';
import 'dart:io';

import 'package:mvvm/data/Appexception.dart';
import 'package:mvvm/data/Network/baseapiservice.dart';
import 'package:http/http.dart' as Http;
class NetwrokAApiService implements Baseapiservice {
  @override
  Future getapidata(String url) async {
    dynamic responsejson;
    try {
      final _response= Http.get(Uri.parse(url)).timeout(Duration(seconds: 30));
     responsejson = RetuenResponse(_response as Http.Response);
    }
    on SocketException {
      throw FetchException('NO Internet');
    }
    return responsejson;
  }

  @override
  Future postapidata(String url) {
    // TODO: implement postapidata
    throw UnimplementedError();
  }

  dynamic RetuenResponse(Http.Response response)
  {
    switch(response.statusCode){
      case 200:
        dynamic responsejson= jsonDecode(response.body);
        return responsejson;
      case 400:
          throw BadRequestexception(response.statusCode.toString());
        default:
        throw FetchException("Bed Internat"+response.statusCode.toString());
    }
  }
}

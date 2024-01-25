abstract class Baseapiservice {
  Future<dynamic> getapidata(String url);

  Future<dynamic> postapidata(String url, dynamic data);
}

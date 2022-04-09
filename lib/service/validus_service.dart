import 'package:get/get.dart';

import '../model/stocks_response.dart';

class ValidusService extends GetConnect {
  // Get request
  Future<Response> getStocksResponse() => get('https://run.mocky.io/v3/fc3ddccf-855c-4bb6-861c-cf7896aa963e');
  // Post request

}
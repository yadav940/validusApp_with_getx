import 'package:get/get.dart';
class ValidusService extends GetConnect {
  Future<Response> getStocksResponse() => get('https://run.mocky.io/v3/fc3ddccf-855c-4bb6-861c-cf7896aa963e');

}

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:validus/model/stocks_response.dart';

import '../service/validus_service.dart';

class ValidusController extends GetxController{

  RxBool isLoading=false.obs;
  RxInt selectedIndex=0.obs;
  final validusService = Get.put(ValidusService());

  List<Data> stockList=[];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getStocksResponse();
  }

  void onTap(int index){
    selectedIndex.value=index;

  }

  void getStocksResponse(){
    isLoading.value=true;
    validusService.getStocksResponse().then((value)  {

      isLoading.value=false;
      if(value.statusCode==200){
        StocksResponse resp=StocksResponse.fromJson(value.body);
        if((resp.data?.length??0) >0){
          stockList=resp.data!;
        }
      }

    });

  }


}
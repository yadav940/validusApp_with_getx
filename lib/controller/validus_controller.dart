
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:validus/model/stocks_response.dart';
import 'package:validus/utils/string_const.dart';

import '../service/validus_service.dart';

class ValidusController extends GetxController{

  RxBool isLoading=false.obs;
  RxInt selectedIndex=0.obs;
  final validusService = Get.put(ValidusService());
  RxString name=''.obs;
  RxString email=''.obs;
  RxString address=''.obs;

  List<DataResponce> stockList=[];
  @override
  void onInit() {
    super.onInit();
    getProfileData();
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

  void getProfileData(){
    final storage = GetStorage();
     name.value=storage.read(StringConst.namekey)??'';
     email.value=storage.read(StringConst.emailkey)??'';
     address.value=storage.read(StringConst.addresskey)??'';
  }



}
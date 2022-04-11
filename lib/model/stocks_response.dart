
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../ui/usefull/palette.dart';

class StocksResponse {
  bool? success;
  int? statusCode;
  List<DataResponce>? data;

  StocksResponse({this.success, this.statusCode, this.data});

  factory StocksResponse.fromJson(Map<String, dynamic> json){
    List<DataResponce> data = <DataResponce>[] ;
    if (json['data'] != null){
      json['data'].forEach((v) {
        data.add(DataResponce.fromJson(v));
      });
    }
    return StocksResponse(
        success : json['success'],
        statusCode : json['statusCode'],
      data: data
    );
  }

 /* StocksResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['statusCode'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }*/

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['statusCode'] = this.statusCode;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataResponce {
  String? id;
  String? stockName;
  double? price;
  double? dayGain;
  String? lastTrade;
  String? lastTradeString;
  String? extendedHours;
  String? extendedHoursString;
  double? lastPrice;
  String? changePercentage;
  bool? isProfit;
  Color? color;

  DataResponce(
      {this.id,
        this.stockName,
        this.price,
        this.dayGain,
        this.lastTrade,
        this.extendedHours,
        this.lastPrice});

  DataResponce.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stockName = json['stockName'];
    price = json['price'];
    dayGain = json['dayGain'];
    lastTrade = json['lastTrade'];
    lastTradeString = convertTime(json['lastTrade']);
    extendedHours = json['extendedHours'];
    extendedHoursString = convertTime(json['extendedHours']);
    lastPrice = json['lastPrice'];
    changePercentage= (((price ?? 0) - (lastPrice ?? 0)) *
        100 /
        (lastPrice ?? 1))
        .toStringAsFixed(1);
    isProfit=((price ?? 0) - (lastPrice ?? 0)) > 0;
    if(((price ?? 0) - (lastPrice ?? 0)) > 0){
      color= Palette.success;

    }else{
      color=Palette.colorError;
    }
  }

  String convertTime(String data){
    var date = DateTime.fromMicrosecondsSinceEpoch(int.parse(data));
    return DateFormat('hh:mm a').format(date);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['stockName'] = this.stockName;
    data['price'] = this.price;
    data['dayGain'] = this.dayGain;
    data['lastTrade'] = this.lastTrade;
    data['extendedHours'] = this.extendedHours;
    data['lastPrice'] = this.lastPrice;
    return data;
  }
}
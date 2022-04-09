
class StocksResponse {
  bool? success;
  int? statusCode;
  List<Data>? data;

  StocksResponse({this.success, this.statusCode, this.data});

  factory StocksResponse.fromJson(Map<String, dynamic> json){
    List<Data> data = <Data>[] ;
    if (json['data'] != null){
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
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

class Data {
  String? id;
  String? stockName;
  double? price;
  double? dayGain;
  String? lastTrade;
  String? extendedHours;
  double? lastPrice;

  Data(
      {this.id,
        this.stockName,
        this.price,
        this.dayGain,
        this.lastTrade,
        this.extendedHours,
        this.lastPrice});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stockName = json['stockName'];
    price = json['price'];
    dayGain = json['dayGain'];
    lastTrade = json['lastTrade'];
    extendedHours = json['extendedHours'];
    lastPrice = json['lastPrice'];
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
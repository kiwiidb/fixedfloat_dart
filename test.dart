import 'dart:io';

import 'fixedfloat.dart';

void main() async {
  var ff = FixedFloat(
      url: "fixedfloat.com",
      apiKey: Platform.environment["APIKEY"],
      apiSecret: Platform.environment["APISECRET"]);
  var order = await ff.CreateOrder(
      "BTCLN", "BTC", "3FdGUcB7oX4bwouBu8YwX3G9VNsq7Mhuw8", "float", 0.01);
  if (order.data != null) {
    var fetched = await ff.GetOrder(order.data.id, order.data.token);
    if (fetched.data == null) {
      print(fetched.msg);
    } else {
      print(fetched.data.toJson());
    }
  } else {
    print(order.msg);
  }
}

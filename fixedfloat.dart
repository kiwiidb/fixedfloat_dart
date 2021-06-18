import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

import 'models.dart';

class FixedFloat {
  String url;
  String apiKey;
  String apiSecret;
  String refLink;
  FixedFloat({
    this.url,
    this.apiKey,
    this.apiSecret,
    this.refLink,
  });
  Future<Order> CreateOrder(
      String from, String to, String toAddress, String type, double qty) async {
    var url = Uri.https(this.url, '/api/v1/createOrder');
    var map = new Map<String, String>();
    map['fromCurrency'] = from;
    map['toCurrency'] = to;
    map['toAddress'] = toAddress;
    map['fromQty'] = qty.toString();
    map['type'] = type;
    var headers = new Map<String, String>();
    headers['X-API-KEY'] = this.apiKey;
    headers['X-API-SIGN'] = createSig("", map);
    var response = await http.post(url, body: map, headers: headers);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Order.fromJson(jsonDecode(response.body));
    } else {
      print(response.body);
      throw new Exception("something went wrong");
    }
  }

  Future<Order> GetOrder(String id) {}

  String createSig(String queryString, Map<String, String> map) {
    var toSign = queryString;
    map.forEach((k, v) => toSign = toSign + "&" "$k=$v");
    if (toSign.length > 0 && toSign[0] == "&") {
      toSign = toSign.substring(1);
    }
    var key = utf8.encode(apiSecret);
    var bytes = utf8.encode(toSign);

    var hmacSha256 = Hmac(sha256, key); // HMAC-SHA256
    var digest = hmacSha256.convert(bytes);
    return "$digest";
  }
}

void main() async {
  var ff =
      FixedFloat(url: "fixedfloat.com", apiKey: "key", apiSecret: "secret");
  var order = await ff.CreateOrder(
      "BTCLN", "BTC", "3FdGUcB7oX4bwouBu8YwX3G9VNsq7Mhuw8", "float", 0.01);
  print(order.data.toJson());
}

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> sendEmail(String title, String address, String msg) async {
  // var url = "https://218.161.26.98:1234/sendEmail";
  var url = "https://e767b1147831.ngrok.io/sendEmail";
  var body =
      json.encode({"title": "$title", "address": "$address", "body": "$msg"});

  Map<String, String> headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  final response = await http.post(url, body: body, headers: headers);
  final responseJson = json.decode(response.body);

  return responseJson['send'];
}

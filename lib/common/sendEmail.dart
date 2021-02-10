import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> sendEmail(String title, String address, String msg) async {
  var url = "http://218.161.26.98:1234/sendEmail";
  // var url = "http://218.161.26.98:1234/";
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

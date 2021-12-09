import 'dart:convert';
import 'package:http/http.dart' as http;

Future fetchOtp() async {
  final response = await http.get(Uri.parse(
      'http://dev.carclenx.com/api/V2/customers/validate-otp?phone=9037791799&otp=941708'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

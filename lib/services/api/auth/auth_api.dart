import 'dart:convert';
import 'package:chang_man_flutter_template/services/api/api_response.dart';
import 'package:chang_man_flutter_template/services/setting/env.dart';
import 'package:http/http.dart' as http;

class AuthApi {
  Future<ApiResponse<dynamic>> verifyCode(String phone, String code) async {
    var res = await http.post(
        Uri.parse("${Environment.backendURL}/auth/verify/code"),
        body: {"phone": phone, "code": code});
    if (res.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(res.body);
      return ApiResponse.fromJson(jsonResponse, (dynamic data) => data);
    }
    throw Exception("Server Error");
  }
}

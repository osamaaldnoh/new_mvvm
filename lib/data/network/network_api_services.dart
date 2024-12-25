import 'dart:convert';
import 'dart:io';
import 'package:new_mvvm/data/app_exceptions.dart';
import 'package:new_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    return responseJson;
  }

  Future postApi(var data, String url) async {
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    print('response.statusCode ${response.statusCode}');
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataException(
            "Error accoured while communication with server " +
                response.statusCode.toString());
    }
  }
}

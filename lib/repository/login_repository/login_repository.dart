import 'package:new_mvvm/data/network/network_api_services.dart';
import 'package:new_mvvm/res/app_url.dart';

class LoginRepository {
  final _api = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    final response = await _api.postApi(data, AppUrl.loginApi);
    return response;
  }
}

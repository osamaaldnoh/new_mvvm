import 'package:new_mvvm/data/network/network_api_services.dart';
import 'package:new_mvvm/models/user_list_model.dart';
import 'package:new_mvvm/res/app_url.dart';

class HomeRepository {
  final _apiServies = NetworkApiServices();

  Future<UserListModel> userListApi() async {
    final response = await _apiServies.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response);
  }
}

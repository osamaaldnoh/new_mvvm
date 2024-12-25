import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_mvvm/data/response/status.dart';
import 'package:new_mvvm/models/user_list_model.dart';
import 'package:new_mvvm/models/user_model.dart';
import 'package:new_mvvm/repository/home_repository/home_repository.dart';
import 'package:new_mvvm/res/routes/routes_title.dart';
import 'package:new_mvvm/view_models/user_preference/user_preference_view_model.dart';
import 'package:new_mvvm/widgets/messages.dart';

import '../../../repository/login_repository/login_repository.dart';

class UserListController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    loginApi();
  }

  final _api = HomeRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;

  void loginApi() {
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
    });
  }
}

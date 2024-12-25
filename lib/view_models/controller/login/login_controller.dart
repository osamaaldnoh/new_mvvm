import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_mvvm/models/user_model.dart';
import 'package:new_mvvm/res/routes/routes_title.dart';
import 'package:new_mvvm/view_models/user_preference/user_preference_view_model.dart';
import 'package:new_mvvm/widgets/messages.dart';

import '../../../repository/login_repository/login_repository.dart';

class LoginController extends GetxController {
  final _api = LoginRepository();
  UserPreference userPreference = UserPreference();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  loginApi() {
    Map data = {
      "email": emailController.value.text,
      "password": passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      if (value['error'] == 'user not found') {
        Messages.snackBar('Error', value['error']);
      } else {
        userPreference.saveUser(UserModel.fromJson(value)).then((value) {
          Get.toNamed(RoutesTitle.homeScreen);
        }).onError((error, stackTrace) {});
        Messages.snackBar('Login', "Login Succsesfully");
      }
    }).onError((error, stackTrace) {
      print(error.toString());
      Messages.snackBar('Error', error.toString());
    });
  }
}

import 'dart:async';

import 'package:get/get.dart';
import 'package:new_mvvm/res/routes/routes_title.dart';
import 'package:new_mvvm/view/home_screen.dart';
import 'package:new_mvvm/view/login_screen.dart';
import 'package:new_mvvm/view_models/user_preference/user_preference_view_model.dart';

class SplashController extends GetxController {
  UserPreference userPreference = UserPreference();
  @override
  void onReady() {
    super.onReady();
    userPreference.getUser().then((value) {
      if (value.token == '' || value.token.toString() == "null") {
        Timer(const Duration(seconds: 3),
            () => Get.off(() => LoginScreen(), transition: Transition.fade));
      } else {
        Timer(const Duration(seconds: 3),
            () => Get.off(() => HomeScreen(), transition: Transition.fade));
      }
    });
  }
}

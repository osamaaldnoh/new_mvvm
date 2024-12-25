import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:new_mvvm/res/colors/app_colors.dart';

class Messages {
  static void fieldFocusChange(FocusNode currect, FocusNode nextFocus) {
    currect.unfocus();
    FocusScope.of(Get.context!).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackColor,
      gravity: ToastGravity.CENTER,
    );
  }

  static snackBar(String tTitle, String message) {
    Get.snackbar(
      tTitle,
      message,
    );
  }
}

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:new_mvvm/res/colors/app_colors.dart';

class InternetExceptionWidgets extends StatelessWidget {
  const InternetExceptionWidgets({Key? key, required this.onPress})
      : super(key: key);

  final VoidCallback onPress;
  static final sizeScreen = MediaQuery.of(Get.context!).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: sizeScreen.height * .15,
            ),
            Icon(
              Icons.cloud_off,
              color: AppColors.redColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(child: Text('internet_exceptions'.tr)),
            ),
            SizedBox(
              height: sizeScreen.height * .15,
            ),
            InkWell(
              onTap: onPress,
              child: Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  color: AppColors.ptimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Retry',
                    style: Theme.of(Get.context!)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExceptionWidgets {
  static final sizeScreen = MediaQuery.of(Get.context!).size;

  static InternetExceptionWidgets({Callback? onPress}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: sizeScreen.height * .15,
          ),
          Icon(
            Icons.cloud_off,
            color: AppColors.redColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(
                child: Text(
              'internet_exceptions'.tr,
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: sizeScreen.height * .15,
          ),
          InkWell(
            onTap: onPress,
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                color: AppColors.ptimaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'Retry',
                  style: Theme.of(Get.context!)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

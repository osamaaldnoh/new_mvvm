import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mvvm/res/colors/app_colors.dart';
import 'package:new_mvvm/view_models/controller/splash/splash_controller.dart';
import 'package:new_mvvm/widgets/exceptions_widgets.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) {
          return Scaffold(
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'splash_screen_title',
                    textAlign: TextAlign.center,
                    style: Theme.of(Get.context!)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.shop_outlined,
                    size: 70,
                  ),
                ],
              ),
            ),
          );
        });
  }
}

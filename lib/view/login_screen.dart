import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mvvm/widgets/messages.dart';

import '../view_models/controller/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final loginController = Get.put(LoginController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login_screen_title'.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginController.emailController.value,
                    focusNode: loginController.emailFocusNode.value,
                    decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Messages.snackBar('Email', 'Enter email');
                      }
                    },
                    onFieldSubmitted: (value) {
                      Messages.fieldFocusChange(
                          loginController.emailFocusNode.value,
                          loginController.passwordFocusNode.value);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: loginController.passwordController.value,
                    focusNode: loginController.passwordFocusNode.value,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: 'password_hint'.tr,
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Messages.snackBar('Password', 'Enter password');
                      }
                    },
                    onFieldSubmitted: (value) {
                      // Messages.fieldFocusChange(
                      //     loginController.passwordFocusNode.value,
                      //     loginController.emailFocusNode.value);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  loginController.loginApi();
                }
              },
              child: Text('Login_screen_title'.tr),
            ),
          ],
        ),
      ),
    );
  }
}

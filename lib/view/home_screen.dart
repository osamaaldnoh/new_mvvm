import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mvvm/res/routes/routes_title.dart';
import 'package:new_mvvm/view_models/controller/home/user_list_controller.dart';
import 'package:new_mvvm/view_models/user_preference/user_preference_view_model.dart';

import '../data/response/status.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final userListController = Get.put(UserListController());
  UserPreference userPreference = UserPreference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              userPreference.removeUser().then((value) {
                Get.toNamed(RoutesTitle.loginScreen);
              });
            },
            icon: Icon(
              Icons.logout_outlined,
            ),
          ),
        ],
      ),
      body: Obx(() {
        switch (userListController.rxRequestStatus.value) {
          case Status.LOADING:
            return Center(
              child: CircularProgressIndicator(),
            );
          case Status.ERROR:
            return Center(
              child: Text('Samething went wring'),
            );
          case Status.COMPLETED:
            return ListView.builder(
                itemCount: userListController.userList.value.data!.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(userListController
                            .userList.value.data![index].avatar
                            .toString()),
                      ),
                      title: Text(userListController
                          .userList.value.data![index].firstName!),
                      subtitle: Text(userListController
                          .userList.value.data![index].lastName!),
                    ),
                  );
                });
        }
      }),
    );
  }
}

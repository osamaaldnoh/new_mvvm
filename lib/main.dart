import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mvvm/res/getx_loclization/languages.dart';
import 'package:new_mvvm/res/routes/routes_page.dart';
import 'package:new_mvvm/res/routes/routes_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: RoutesTitle.splashScreen,
      getPages: RoutesPage.routesPage(),
    );
  }
}

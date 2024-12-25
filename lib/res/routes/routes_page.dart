import 'package:get/get.dart';
import 'package:new_mvvm/res/routes/routes_title.dart';
import 'package:new_mvvm/view/home_screen.dart';
import 'package:new_mvvm/view/splash_screen.dart';

import '../../view/login_screen.dart';

class RoutesPage {
  static routesPage() => [
        GetPage(
          name: RoutesTitle.splashScreen,
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRight,
          page: () => SplashScreen(),
        ),
        GetPage(name: RoutesTitle.loginScreen, page: () => LoginScreen()),
        GetPage(name: RoutesTitle.homeScreen, page: () => HomeScreen()),
      ];
}

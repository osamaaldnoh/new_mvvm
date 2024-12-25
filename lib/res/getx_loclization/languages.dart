import 'package:get/get.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'internet_exceptions':
              "We're unable to show results. \n Please check your data\nconnection.",
          'Login_screen_title': "Login",
          'splash_screen_title': "Welcome Shopping \n App",
          'email_hint': 'Email',
          'password_hint': 'Password',
        },
        'ar_YE': {
          'email_hint': 'أدخل البريد الالكتروني',
        },
      };
}

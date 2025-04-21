import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'email_hint' : 'Enter email',
      'internet_exception' : "We're unable to show results.\nPlease check you data\nconnection.",
      'genral_exception' : "We're unable to process your request.\n Please try again.",
      'welcome_back' : "Welcome\nBack",
      'login' : "Login",
    },
    'ur_PK' : {
      'enter_email' : 'ای میل درج کریں',
      'internet_exception' : 'ہم نتائج دکھانے سے قاصر ہیں۔\nبراہ کرم اپنا ڈیٹا\nکنکشن چیک کریں۔'
    }
  };
}
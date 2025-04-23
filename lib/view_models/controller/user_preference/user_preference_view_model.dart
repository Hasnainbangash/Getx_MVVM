import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences extends GetxController {

  Future<bool> saveUser(LoginResponseModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('toke', responseModel.token.toString());
    return true;
  }

}
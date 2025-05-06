import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/components/round_button.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {

  final formKey;

  LoginButtonWidget({super.key, required this.formKey});

  final LoginViewModel loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return RoundButton(
          title: 'login'.tr,
          width: 200,
          loading: loginViewModel.loading.value,
          onPress: () {
            if(formKey.currentState!.validate()) {
              loginViewModel.loginApi();
            }
          }
      );
    });
  }
}

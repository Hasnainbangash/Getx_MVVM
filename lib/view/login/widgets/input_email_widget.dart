import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/utils.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class InputEmailWidget extends StatelessWidget {
  InputEmailWidget({super.key});

  final LoginViewModel loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginViewModel.passwordController.value,
      focusNode: loginViewModel.passwordFocusNode.value,
      obscureText: true,
      obscuringCharacter: '*',
      validator: (value) {
        if(value!.isEmpty) {
          Utils.snackBar('Password', 'Enter password');
        }
      },
      onFieldSubmitted: (value){
      },
      decoration: InputDecoration(
        hintText: 'password_hint'.tr,
        border: OutlineInputBorder(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/utils.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({super.key});

  final LoginViewModel loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginViewModel.emailController.value,
      focusNode: loginViewModel.emailFocusNode.value,
      validator: (value) {
        if(value!.isEmpty) {
          Utils.snackBar('Email', 'Enter email');
        }
      },
      onFieldSubmitted: (value){
        Utils.fieldFocusChange(context, loginViewModel.emailFocusNode.value, loginViewModel.passwordFocusNode.value);
      },
      decoration: InputDecoration(
        hintText: 'email_hint'.tr,
        border: OutlineInputBorder(),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getx_mvvm/res/colors/app_color.dart';

class Utils {

  // This function will change the focus from one place to another
  // Here focus node context where we want to change it and the focus node current is current where the focus is now and the next focus is where we want to change the focus
  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
      backgroundColor: AppColor.blackColor,
    );
  }



}
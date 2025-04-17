import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/components/internet_exception_widget.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return InternetExceptionWidget();
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('email_hint'.tr),
    //   ),
    //   // floatingActionButton: FloatingActionButton(onPressed: (){
    //   //   throw InternetException('message');
    //   // }),
    //   body: Image(
    //     image: AssetImage(ImageAssets.splashScreen),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //       onPressed: (){
    //         Utils.toastMessageCenter('Hasnain');
    //         Utils.toastMessage('Hasnain');
    //       },
    //   ),
    // );
  }
}

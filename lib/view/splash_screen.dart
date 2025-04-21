import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/components/general_exception.dart';
import 'package:getx_mvvm/res/components/internet_exception_widget.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text('welcome_back'.tr, textAlign: TextAlign.center,),),
    );


    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('email_hint'.tr),
    //   ),
    //   // floatingActionButton: FloatingActionButton(onPressed: (){
    //   //   throw InternetException('message');
    //   // }),
    //   // body: Image(
    //   //   image: AssetImage(ImageAssets.splashScreen),
    //   // ),
    //   // floatingActionButton: FloatingActionButton(
    //   //     onPressed: (){
    //   //       Utils.toastMessageCenter('Hasnain');
    //   //       Utils.toastMessage('Hasnain');
    //   //     },
    //   // ),
    //   // body: InternetExceptionWidget(onPress: () {}),
    //   // body: GeneralExceptionWidget(onPress: () {}),
    //   body: Column(
    //     children: [
    //       RoundButton(onPress: (){}, title: 'Login', width: double.infinity, loading: true,),
    //       RoundButton(onPress: (){}, title: 'Singup', width: 200,),
    //     ],
    //   ),
    // );
  }
}

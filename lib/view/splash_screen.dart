import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   throw InternetException('message');
      // }),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Utils.toastMessageCenter('Hasnain');
            Utils.toastMessage('Hasnain');
          },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/colors/app_color.dart';
import 'package:get/get.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * 0.15),
          Icon(Icons.cloud_off, color: AppColor.redColor, size: 50),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text('internet_exception'.tr),
          ),
          SizedBox(height: height * 0.15),
        ],
      ),
    );
  }
}

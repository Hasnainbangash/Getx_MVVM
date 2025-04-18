import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/colors/app_color.dart';
import 'package:get/get.dart';

class InternetExceptionWidget extends StatefulWidget {

  final VoidCallback onPress;

  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.15),

            Icon(Icons.cloud_off, color: AppColor.redColor, size: 50),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text('internet_exception'.tr, textAlign: TextAlign.center,),
            ),

            SizedBox(height: height * 0.15),

            InkWell(
              onTap: widget.onPress,
              child: Container(
                height: 44,
                width: 160,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                        'Retry',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

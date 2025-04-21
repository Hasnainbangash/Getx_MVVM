import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/getx_localization/languages.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // For the translation select the Languages file
      translations: Languages(),
      // And for the app select the language you want to use
      locale: Locale('en_US'),
      // In case if the locale has no translation than the fall back locale will be used
      fallbackLocale: Locale('en_US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.appRoutes(),
    );
  }
}

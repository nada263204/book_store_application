import 'package:book_store_application/features/splash/presentation/views/screens/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const bookstoreApp());
}

// ignore: camel_case_types
class bookstoreApp extends StatelessWidget {
  const bookstoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData()
          .copyWith(scaffoldBackgroundColor: const Color(0XFF100B20)),
      home: const SplashView(),
    );
  }
}

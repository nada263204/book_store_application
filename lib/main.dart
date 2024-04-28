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
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: const  Color.fromARGB(255, 39, 31, 68)),
      home: const SplashView(),
    );
  }
}

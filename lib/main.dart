import 'package:book_store_application/features/splash/presentation/views/screens/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const bookstoreApp());
}

class bookstoreApp extends StatelessWidget {
  const bookstoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}
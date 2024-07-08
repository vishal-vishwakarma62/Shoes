import 'package:flutter/material.dart';
import 'package:shoes/account_setting.dart';
import 'package:shoes/best_seller.dart';
import 'package:shoes/checkout.dart';
import 'package:shoes/details.dart';
import 'package:shoes/favorite.dart';
import 'package:shoes/filteri.dart';
import 'package:shoes/forget_password.dart';
import 'package:shoes/home.dart';
import 'package:shoes/my_cart.dart';
import 'package:shoes/notification.dart';
import 'package:shoes/onboarding_screen.dart';
import 'package:shoes/profile.dart';
import 'package:shoes/sign_in.dart';
import 'package:shoes/sign_up.dart';
import 'package:shoes/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const home(),
    );
  }
}

import 'package:flutter/material.dart';
//import 'package:untitled15/privacy_policy.dart';
//import 'package:untitled15/sons_page.dart';
//import 'home_page.dart';
import 'login_page.dart';
//import 'package:untitled15/sign_password.dart';
//import 'newaccount_page.dart';
import 'package:get/get.dart';
//import 'norah_page.dart';
//import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,),
      debugShowCheckedModeBanner: false,
      home:const  LoginPage(),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_1_flut/Controllers/ProfileController.dart';
import 'Controllers/AuthController.dart';
import 'Controllers/ChatController.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/LogInScreen.dart';
import 'Screens/ScrollScreen.dart';


void main() {
  Get.put(ChatController());
  Get.put(AuthController());
  Get.put(ProfileController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kudurdum',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'ChatScreen.dart';
import 'FilterScreen.dart';
import 'LoginScreen.dart';
import 'SignUpScreen.dart';
import 'ProfileScreen.dart';
import 'ScrollScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Chat Screen'),
              onPressed: () => Get.to(ChatScreen()),
            ),
            ElevatedButton(
              child: Text('Filter Screen'),
              onPressed: () => Get.to(FilterScreen()),
            ),
            ElevatedButton(
              child: Text('Login Screen'),
              onPressed: () => Get.to(LoginScreen()),
            ),
            ElevatedButton(
              child: Text('Sign Up Screen'),
              onPressed: () => Get.to(SignUpScreen()),
            ),
            ElevatedButton(
              child: Text('Profile Screen'),
              onPressed: () => Get.to(ProfileScreen()),
            ),
            ElevatedButton(
              child: Text('Scroll Screen'),
              onPressed: () => Get.to(ScrollScreen()),
            ),
          ],
        ),
      ),
    );
  }
}

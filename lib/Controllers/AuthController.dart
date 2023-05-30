import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  var isLogged = false.obs;

  Future<void> login(String username, String password) async {
    // Get instance of SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? storedUsername = prefs.getString('username');
    String? storedPassword = prefs.getString('password');

    // Check if stored username and password match the entered username and password
    if (storedUsername == username && storedPassword == password) {
      isLogged.value = true;
      Get.offNamed('/home');
    } else {
      Get.snackbar("Error", "Invalid username or password");
    }
  }

  Future<void> signup(String username, String password) async {
    // Get instance of SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Check if username already exists
    String? storedUsername = prefs.getString('username');
    if (storedUsername == username) {
      Get.snackbar("Error", "Username already exists");
      return;
    }

    // Store the username and password
    await prefs.setString('username', username);
    await prefs.setString('password', password);

    isLogged.value = true;
    Get.offNamed('/home');
  }

  Future<void> logout() async {
    isLogged.value = false;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
    await prefs.remove('password');
    Get.offNamed('/login');
  }
}

import 'package:flutter/cupertino.dart';
import 'package:forms/signin/model.dart';
import 'package:get/get.dart';

class UserLogin extends GetxController {
  final formkey = GlobalKey<FormState>();
  User? user;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  onsavedname(String value) {
    nameController.text = value;
  }

  onsavedpassword(String value) {
    passwordController.text = value;
  }

  onsubmitdata() {
    formkey.currentState!.save();
    user = User(nameController.text, passwordController.text);
  }

  RxList<User> users = <User>[].obs;
}

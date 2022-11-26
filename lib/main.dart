import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:forms/signin/view.dart';
// import 'package:forms/home/view_home.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Foodie App",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Color(0xff181818)))),
      // home: mainpage(),
      home: MainPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:forms/home/view_home.dart';
import 'package:forms/signin/controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainPage extends StatelessWidget {
  final UserLogin UL = Get.put(UserLogin());
//  final UR = Get.put(UserLogin()); both are same but here it check the class
// and decide his datatypes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: Form(
        key: UL.formkey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(100),
                //   child: Image.asset(
                //     'images/pic_2.png',
                //     // height: 20,
                //     // width: 20,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                const CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage(
                    'images/logo.jpg',
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Welcome to Grilled",
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 30, 25, 15),
                  child: TextFormField(
                    // onSaved: (value) {
                    //   UL.onsavedname(value!);
                    // },
                    controller: UL.nameController,
                    validator: (Value) {
                      if (Value == null || Value.isEmpty) {
                        return "Enter the name";
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.white),
                    maxLines: 1,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(
                          color: Color(0xff6F695F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      icon: const Icon(
                        Icons.person,
                        size: 37,
                        color: Color(0xff6F695F),
                      ),
                      hintStyle: const TextStyle(color: Color(0xff4453A7)),
                      labelText: "UserName",
                      hintText: "Enter the name ",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 15, 25, 20),
                  child: TextFormField(
                    obscureText: true,
                    controller: UL.passwordController,
                    // onSaved: (value) {
                    //   UL.onsavedpassword(value!);
                    // },
                    validator: (Value) {
                      if (Value == null || Value.isEmpty) {
                        return "Enter the password";
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.white),
                    maxLines: 1,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(
                          color: Color(0xff6F695F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      icon: const Icon(
                        Icons.lock,
                        size: 30,
                        color: Color(0xff6F695F),
                      ),
                      hintStyle: const TextStyle(color: Color(0xff4453A7)),
                      labelText: "Password",
                      hintText: "Enter the password ",
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 225,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (UL.formkey.currentState!.validate()) {
                        FirebaseAuth auth = FirebaseAuth.instance;
                        auth.createUserWithEmailAndPassword(
                            email: 'ali@gmail.com', password: '123456');
                        UL.onsubmitdata();
                        Get.to(Home());
                      }
                    },
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            width: 2, color: Color(0xff9CC1DB)),
                        primary: const Color(0xff181818),
                        onPrimary: Colors.white,
                        shadowColor: const Color(0xff5DD76A),
                        elevation: 25,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

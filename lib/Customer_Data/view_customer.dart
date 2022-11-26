import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signin/controller.dart';

class CustomerData extends StatelessWidget {
  final String name;
  final String password;
  final controller = Get.put(UserLogin());

  CustomerData({Key? key, required this.name, required this.password})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7A85BE),
        title: const Text(
          "Customer Data ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'UserName:',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              controller.users[index].name,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Row(
                          children: [
                            const Text(
                              'PassWord:',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              controller.users[index].password,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

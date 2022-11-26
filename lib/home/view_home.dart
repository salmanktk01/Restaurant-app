import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forms/Customer_Data/view_customer.dart';
import 'package:forms/home/about.dart';
import 'package:forms/home/contact.dart';
import 'package:forms/home/controller_home.dart';
import 'package:forms/home/featured/view_fea.dart';
import 'package:forms/home/hero/view_hero.dart';
import 'package:forms/signin/view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../signin/controller.dart';
import '../signin/model.dart';

class Home extends StatelessWidget {
  GlobalKey globalKey = GlobalKey<ScaffoldState>();
  final UserLogin ULI = Get.put(UserLogin());
  final BL = Buildlist();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: const CircleAvatar(
                  radius: 26, backgroundImage: AssetImage('images/tux.png')),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color(0xff36454F),
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/main.JPG'),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "\"To eat is a necessity, but to eat intelligently is an art.\"",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 3,
                color: Colors.white,
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: const Text(
                  "About Us",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  Get.to(About());
                },
              ),
              const Divider(
                height: 3,
                color: Colors.white,
              ),
              ListTile(
                leading: const Icon(
                  Icons.book,
                  color: Colors.white,
                ),
                title: const Text(
                  "Customer Data",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  Get.to(CustomerData(
                    name: ULI.nameController.text,
                    password: ULI.passwordController.text,
                  ));
                  ULI.users.add(User(
                      ULI.nameController.text, ULI.passwordController.text));
                  ULI.nameController.clear();
                  ULI.passwordController.clear();
                },
              ),
              const Divider(
                height: 3,
                color: Colors.white,
              ),
              ListTile(
                leading: const Icon(
                  Icons.contact_page,
                  color: Colors.white,
                ),
                title: const Text(
                  "Contact Us",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  Get.to(contact());
                },
              ),
              const Divider(
                height: 3,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Get.to(MainPage());
                },
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              width: 100,
              margin: const EdgeInsets.fromLTRB(15, 25, 10, 15),
              child: const Text(
                "SEARCH FOR ",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 100,
              margin: const EdgeInsets.fromLTRB(15, 0, 10, 15),
              child: const Text(
                "RECIPES",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 20, 15),
              decoration: BoxDecoration(
                color: Color(0xffECECEC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: GoogleFonts.notoSans(
                    fontSize: 15,
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.cyan, width: 3)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'Recommended',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 0, 10),
              height: 205,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: BL.listresult.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Hero(
                      tag: '${BL.listresult[index].imgpath}',
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) =>
                                  Heros(BL.listresult[index]))));
                        },
                        child: Container(
                          height: 175,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: BL.listresult[index].bgcolor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                    '${BL.listresult[index].imgpath}'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                '${BL.listresult[index].name}',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w200),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${BL.listresult[index].price}',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 8, 5),
              child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffDCBCFF)),
                  tabs: const [
                    Tab(
                      child: Text(
                        'FEATURED',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'COMBO',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Favourites',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Recommend',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(children: [
                featuredpage(),
                featuredpage(),
                featuredpage(),
                featuredpage(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class $ {}

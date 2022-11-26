import 'package:flutter/material.dart';
import 'package:forms/home/model.dart';

class Heros extends StatelessWidget {
  const Heros(this.obj, {Key? key}) : super(key: key);
  final Listitem obj;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Hero(
          tag: obj.imgpath,
          child: ListView(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(obj.imgpath),
                ),
              ),
              Card(
                color: obj.bgcolor,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Name:" + " " '${obj.name}',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Price:" + " " '${obj.price}',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

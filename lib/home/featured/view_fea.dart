import 'package:flutter/material.dart';
import 'package:forms/home/featured/controller.dart';
import 'package:forms/home/featured/model_fea.dart';

class featuredpage extends StatelessWidget {
  final FL = Buildlist_Feat();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 5),
          height: 300,
          child: ListView.builder(
            itemCount: FL.fearesult.length,
            itemBuilder: ((context, index) => Card(
                  child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('${FL.fearesult[index].imgpath}'),
                      ),
                      title: Text(
                        '${FL.fearesult[index].name}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        '${FL.fearesult[index].price}',
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      trailing: Icon(Icons.star)),
                )),
          ),
        )
      ],
    );
  }
}

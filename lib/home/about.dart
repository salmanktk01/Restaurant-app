import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff757B89),
      appBar: AppBar(
        backgroundColor: Color(0xff292D30),
        title: const Text(
          'About Us',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: 300,
              margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
              child: const Text(
                'My mission: ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
          Container(
              width: 300,
              margin: EdgeInsets.all(10),
              child: const Text(
                '\"My mission is to create a world where we can live in harmony with nature.\"',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('images/food.jpg'),
            ),
          )
        ],
      ),
    );
  }
}

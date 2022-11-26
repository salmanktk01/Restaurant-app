import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEE8D6),
      appBar: AppBar(
        backgroundColor: Color(0xff757B89),
        title: const Text(
          'Contact Us',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(
                  title: Text('salmankhattak021@gmail.com'),
                  leading: Text(
                    'E-Mail:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(height: 5),
            Card(
              child: ListTile(
                  title: Text('0345-213'),
                  leading: Text(
                    'Landline Num:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(height: 5),
            Card(
              child: ListTile(
                  title: Text('0302-312321312'),
                  leading: Text(
                    'Phone Number:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(height: 5),
            Card(
              child: ListTile(
                  title: Text('Grilled.com'),
                  leading: Text(
                    'Our Page:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(height: 5),
            Card(
              child: ListTile(
                  title: Text('Grilled'),
                  leading: Text(
                    'Instgram:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

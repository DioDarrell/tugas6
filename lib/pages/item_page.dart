import 'package:navigation/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Daftar pegawai"),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(itemArgs.images),
            SizedBox(
              height: 30.0,
            ),
            Text("Nama : " + itemArgs.name),
            SizedBox(
              height: 10.0,
            ),
            Text("E-mail : " + itemArgs.email),
            SizedBox(
              height: 10.0,
            ),
            Text("Number : " + itemArgs.number.toString()),
          ],
        ),
      ),
    ));
  }
}

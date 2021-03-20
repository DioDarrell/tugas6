import 'package:navigation/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Reku',
        email: 'drl@gmai.com',
        number: 193710173,
        images:
            'https://upload.wikimedia.org/wikipedia/commons/4/45/Diego_Costa_2019.jpg'),
    Item(
        name: 'Dio',
        email: 'reku@gmail.com',
        number: 1931710173,
        images: 'https://s.hs-data.com/bilder/spieler/gross/73586.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar pegawai"),
      ),
      body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                            child: Text(
                              item.number.toString(),
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

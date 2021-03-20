

import 'package:flutter/material.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
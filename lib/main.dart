import 'package:flutter/material.dart';
import 'package:untitled/screens/cart_page.dart';
import 'package:untitled/screens/detail_page.dart';
import 'package:untitled/screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home_page(),
        'detail_page': (context) => detail_page(),
        'cart_page': (context) => cart_page(),
      },
    ),
  );
}
